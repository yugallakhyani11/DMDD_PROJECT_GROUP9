
--------------------------------------------------------------------------------------------------------------------------------
/*
The procedure retrieves train schedule details based on a provided station ID, 
including the current and destination stations, scheduled arrival and departure times, and the day of the week
PARAMETERS: 
    @StationID INT : Station ID of the current station
*/
--------------------------------------------------------------------------------------------------------------------------------


IF OBJECT_ID('[dbo].[GET_SCHEDULE_BY_STATION_ID]', 'P') IS NOT NULL
    DROP PROCEDURE [dbo].[GET_SCHEDULE_BY_STATION_ID];
GO

CREATE PROCEDURE GET_SCHEDULE_BY_STATION_ID
    @StationID INT
AS
BEGIN
    WITH currentStation as 
        (SELECT rss.ROUTES_ID,
        rss.SCHEDULE_ID,
        rss.STATION_ID,
        s.NAME,
        s.[LOCATION],
        rss.ARRIVAL_TIME, 
        rss.DEPARTURE_TIME,
        rss.STATION_ORDER 
        FROM ROUTE_SCHEDULE_PER_STATION rss JOIN STATION s
        ON rss.STATION_ID = s.STATION_ID WHERE rss.STATION_ID =  @StationID),

    finalDestination as 
        (SELECT rss.ROUTES_ID,
        rss.SCHEDULE_ID,
        rss.STATION_ID,
        s.NAME,
        s.[LOCATION],
        rss.ARRIVAL_TIME, 
        rss.DEPARTURE_TIME,
        rss.STATION_ORDER
        FROM ROUTE_SCHEDULE_PER_STATION rss JOIN STATION s
        ON rss.STATION_ID = s.STATION_ID  where rss.DEPARTURE_TIME is NULL)


    SELECT DISTINCT
    r.NAME + ' ' + CAST(sch.TRAIN_ID as varchar) as TRAIN_NAME,
    ct.NAME + ', ' + ct.[LOCATION] as CURRENT_STATION,
    ct.DEPARTURE_TIME as SCHEDULED_DEPARTURE_TIME,
    fd.STATION_ID,
    fd.NAME + ', ' + fd.[LOCATION] as DESTINATION_STATION,
    fd.ARRIVAL_TIME as SCHEDULED_ARRIVAL_TIME,
    sch.DAY_OF_WEEK
    FROM 
    currentStation ct
    JOIN
    finalDestination fd  
    ON
    ct.SCHEDULE_ID = fd.SCHEDULE_ID
    and ct.STATION_ORDER < fd.STATION_ORDER
    JOIN ROUTES r
    ON ct.ROUTES_ID = r.ROUTES_ID
    JOIN [SCHEDULE] sch
    ON sch.SCHEDULE_ID = ct.SCHEDULE_ID
    ORDER BY 
    ct.DEPARTURE_TIME,TRAIN_NAME
END;
GO

--------------------------------------------------------------------------------------------------------------------------------



--------------------------------------------------------------------------------------------------------------------------------
/*
The procedure retrieves train schedule details between two train stations
including the current and destination stations, scheduled arrival and departure times, and the day of the week
PARAMETERS: 
    @StartStationID INT : Station ID of the Start station
    @EndStationID INT : Station ID of the End station
*/
--------------------------------------------------------------------------------------------------------------------------------


IF OBJECT_ID('[dbo].[GET_SCHEDULE_BETWEEN_TWO_STATIONS]', 'P') IS NOT NULL
    DROP PROCEDURE [dbo].[GET_SCHEDULE_BETWEEN_TWO_STATIONS];
GO

CREATE PROCEDURE GET_SCHEDULE_BETWEEN_TWO_STATIONS
    @StartStationID INT,
    @EndStationID INT
AS
BEGIN
    -- DECLARE @StartStationID INT
    -- DECLARE @EndStationID INT

    -- set @StartStationID = 707
    -- set @EndStationID = 705;


    WITH startStation as 
            (SELECT rss.ROUTES_ID,
            rss.SCHEDULE_ID,
            rss.STATION_ID,
            s.NAME,
            s.[LOCATION],
            rss.ARRIVAL_TIME, 
            rss.DEPARTURE_TIME,
            rss.STATION_ORDER
            FROM ROUTE_SCHEDULE_PER_STATION rss JOIN STATION s
            ON rss.STATION_ID = s.STATION_ID WHERE rss.STATION_ID =  @StartStationID),
        endStation as 
            (SELECT rss.ROUTES_ID,
            rss.SCHEDULE_ID,
            rss.STATION_ID,
            s.NAME,
            s.[LOCATION],
            rss.ARRIVAL_TIME, 
            rss.DEPARTURE_TIME,
            rss.STATION_ORDER
            FROM ROUTE_SCHEDULE_PER_STATION rss JOIN STATION s
            ON rss.STATION_ID = s.STATION_ID WHERE rss.STATION_ID =  @EndStationID)

    Select r.NAME + ' ' + CAST(sch.TRAIN_ID as varchar) as TRAIN_NAME,
    ct.NAME + ', ' + ct.[LOCATION] as START_STATION,
    ct.DEPARTURE_TIME as SCHEDULED_DEPARTURE_TIME,
    fd.NAME + ', ' + fd.[LOCATION] as END_STATION,
    fd.ARRIVAL_TIME as SCHEDULED_ARRIVAL_TIME,
    sch.DAY_OF_WEEK
    FROM 
    startStation ct
    JOIN
    endStation fd
    on ct.SCHEDULE_ID = fd.SCHEDULE_ID and ct.STATION_ORDER < fd.STATION_ORDER
    JOIN ROUTES r
    ON ct.ROUTES_ID = r.ROUTES_ID
    JOIN [SCHEDULE] sch
    ON sch.SCHEDULE_ID = ct.SCHEDULE_ID
    ORDER BY 
    sch.DAY_OF_WEEK,ct.DEPARTURE_TIME,TRAIN_NAME;

END;
GO


--PROCEDURE TO RECHARGE 
IF OBJECT_ID('[dbo].[ADD_RECHARGE_TRANSACTION]', 'P') IS NOT NULL
    DROP PROCEDURE [dbo].[ADD_RECHARGE_TRANSACTION];
GO

CREATE PROCEDURE [dbo].[ADD_RECHARGE_TRANSACTION]
    @CardID INT,
    @StationID INT,
    @RechargeAmount DECIMAL(10, 2),
    @PaymentMethod VARCHAR(255),
	 @msg VARCHAR(255) OUTPUT
AS
BEGIN
DECLARE @TransactionTimestamp DATETIME;
DECLARE @Balance DECIMAL(10, 2);
SET @TransactionTimestamp = GETDATE(); 
    -- Insert into TRANSACTION table
    BEGIN TRANSACTION
    INSERT INTO [dbo].[TRANSACTION] ([TRANSACTION_TIMESTAMP], [TRANSACTION_TYPE], [CARD_ID], [STATION_ID])
    VALUES (@TransactionTimestamp, 'Recharge', @CardID, @StationID);

    -- Get the generated TRANSACTION_ID
    DECLARE @TransactionID BIGINT;
    SET @TransactionID = SCOPE_IDENTITY();


    -- Insert into RECHARGE_TRANSACTION table
    INSERT INTO [dbo].[RECHARGE_TRANSACTION] ([PAYMENT_ID], [RECHARGE_AMOUNT], [PAYMENT_METHOD])
    VALUES (@TransactionID, @RechargeAmount, @PaymentMethod);
    COMMIT TRANSACTION;


	select @Balance = (SELECT BALANCE from TRANSIT_CARD where CARD_ID = @CardID);

	set @msg = 'New Balance : ' + Cast(@Balance as varchar);
END;
GO
--SAMPLE
--DECLARE @response varchar(55);
--EXEC [dbo].[ADD_RECHARGE_TRANSACTION]  227300006, 702, 15.00, 'Credit Card', @msg = @response OUTPUT;
--select @response


--PROCEDURE FOR JOURNEY TRANSACTION 

CREATE PROCEDURE [dbo].[ADD_JOURNEY_TRANSACTION]
    @CardID INT,
    @StationID INT,
    @RouteID INT,
	@msg NVARCHAR(255) OUTPUT
AS
BEGIN
DECLARE @TransactionTimestamp DATETIME;
DECLARE @Balance DECIMAL(10, 2);
DECLARE @NewBalance DECIMAL(10, 2);
DECLARE @JourneyAmount DECIMAL(10,2);
SET @TransactionTimestamp = GETDATE(); 
SET @Balance = (SELECT BALANCE from TRANSIT_CARD where CARD_ID = @CardID);
SET @JourneyAmount = (SELECT PRICE FROM [dbo].[ROUTES] WHERE ROUTES_ID = @RouteID); 
	IF(@Balance - @JourneyAmount < 0)
	BEGIN
	set @msg = 'Insufficient Balance. Please Recharge before proceeding!';
	END
	ELSE
	BEGIN TRANSACTION
    -- Insert into TRANSACTION table
    INSERT INTO [dbo].[TRANSACTION] ([TRANSACTION_TIMESTAMP], [TRANSACTION_TYPE], [CARD_ID], [STATION_ID])
    VALUES (@TransactionTimestamp, 'Journey', @CardID, @StationID);

    -- Get the generated TRANSACTION_ID
    DECLARE @TransactionID BIGINT;
    SET @TransactionID = SCOPE_IDENTITY();

    -- Insert into RECHARGE_TRANSACTION table
    INSERT INTO [dbo].[JOURNEY_TRANSACTION] ([TRANSACTION_ID], [ROUTES_ID])
    VALUES (@TransactionID, @RouteID);
    COMMIT TRANSACTION

    BEGIN
	select @NewBalance = (SELECT BALANCE from TRANSIT_CARD where CARD_ID = @CardID);
	set @msg = 'New Balance : ' + Cast(@NewBalance as varchar) + '. Happy Journey!';
	END
END;
GO
--SAMPLE
--DECLARE @response varchar(55);
--EXEC [dbo].[ADD_JOURNEY_TRANSACTION]  227300006, 702, 904, @msg = @response OUTPUT;
--SELECT @response


---------TRIGGERS
---------RECHARGE TRANSACTION TRIGGER

CREATE TRIGGER TGR_CHECK_RECHARGE_TRANSACTION
ON [dbo].[RECHARGE_TRANSACTION]
AFTER INSERT
AS
BEGIN
DECLARE @Amount DECIMAL(10, 2);
DECLARE @Card_id INT;
DECLARE @UpdatedAmount DECIMAL(10, 2);
SET @Card_id = (SELECT T.CARD_ID FROM [dbo].[TRANSACTION] T WHERE T.TRANSACTION_ID = (SELECT i.PAYMENT_ID FROM INSERTED i));
SET @Amount = (SELECT RECHARGE_AMOUNT FROM inserted);
SET @UpdatedAmount = (SELECT BALANCE FROM TRANSIT_CARD WHERE CARD_ID = @Card_id) + @Amount;
BEGIN TRANSACTION
   UPDATE [dbo].[TRANSIT_CARD] SET BALANCE = @UpdatedAmount WHERE CARD_ID = @Card_id;
COMMIT TRANSACTION;
END;
GO

---------JOURNEY TRANSACTION TRIGGER
CREATE TRIGGER TGR_CHECK_JOURNEY_TRANSACTION
ON [dbo].[JOURNEY_TRANSACTION]
AFTER INSERT
AS
BEGIN
DECLARE @Amount DECIMAL(10, 2);
DECLARE @Card_id INT;
DECLARE @UpdatedAmount DECIMAL(10, 2);
SET @Card_id = (SELECT T.CARD_ID FROM [dbo].[TRANSACTION] T WHERE T.TRANSACTION_ID = (SELECT i.TRANSACTION_ID FROM INSERTED i));
SET @Amount = (SELECT PRICE FROM [dbo].[ROUTES] WHERE ROUTES_ID = (SELECT i.ROUTES_ID FROM INSERTED i));
SET @UpdatedAmount = (SELECT BALANCE FROM TRANSIT_CARD WHERE CARD_ID = @Card_id) - @Amount;
BEGIN TRANSACTION
   UPDATE [dbo].[TRANSIT_CARD] SET BALANCE = @UpdatedAmount WHERE CARD_ID = @Card_id;
COMMIT TRANSACTION;
END;
GO

USE MASTER 
GO