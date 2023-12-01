--View to look all the incidents that took place on a particular day
IF OBJECT_ID('[dbo].[VIEW_INCIDENTS_BY_DATE]', 'V') IS NOT NULL
    DROP VIEW [dbo].[VIEW_INCIDENTS_BY_DATE];
GO

CREATE VIEW VIEW_INCIDENTS_BY_DATE AS
SELECT 
    INCIDENT_ID, 
    [TYPE], 
    INCIDENT_TIMESTAMP, 
    INCIDENT_DESCRIPTION, 
    EMPLOYEE_INVOLVED, 
    VEHICLE_INVOLVED
FROM 
    [dbo].[INCIDENTS];
GO

-- Example to View the incidents
-- SELECT * FROM VIEW_INCIDENTS_BY_DATE
--WHERE CAST(INCIDENT_TIMESTAMP AS DATE) = '2023-11-25';  


-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
--View to display schedule summary for weekdays

IF OBJECT_ID('[dbo].[VIEW_WEEKDAY_SCHEDULE_SUMMARY_BY_ROUTE]', 'V') IS NOT NULL
    DROP VIEW [dbo].[VIEW_WEEKDAY_SCHEDULE_SUMMARY_BY_ROUTE];
GO


CREATE VIEW VIEW_WEEKDAY_SCHEDULE_SUMMARY_BY_ROUTE AS
SELECT
r.ROUTES_ID,
r.ROUTES_CODE,
r.[NAME] AS ROUTE_NAME,
rs.DEPARTURE_TIME,
s.STATION_ID,
s.[NAME] AS STATION_NAME
FROM 
    [dbo].[ROUTE_SCHEDULE_PER_STATION] rs
	LEFT JOIN [dbo].[ROUTES] r  ON   rs.ROUTES_ID = r.ROUTES_ID
	LEFT JOIN [dbo].[STATION] s ON rs.STATION_ID = s.STATION_ID
	LEFT JOIN [dbo].[SCHEDULE] sh ON rs.SCHEDULE_ID = sh.SCHEDULE_ID

WHERE
rs.STATION_ORDER = 1 AND sh.DAY_OF_WEEK = 'Weekdays'

	;
GO
--Example to view
--SELECT * FROM VIEW_WEEKDAY_SCHEDULE_SUMMARY_BY_ROUTE ORDER BY ROUTES_ID
------------------------------------------------------------------------------------
--View to display schedule summary for weekends

IF OBJECT_ID('[dbo].[VIEW_WEEKEND_SCHEDULE_SUMMARY_BY_ROUTE]', 'V') IS NOT NULL
    DROP VIEW [dbo].[VIEW_WEEKEND_SCHEDULE_SUMMARY_BY_ROUTE];
GO


CREATE VIEW VIEW_WEEKEND_SCHEDULE_SUMMARY_BY_ROUTE AS
SELECT
r.ROUTES_ID,
r.ROUTES_CODE,
r.[NAME] AS ROUTE_NAME,
rs.DEPARTURE_TIME,
s.STATION_ID,
s.[NAME] AS STATION_NAME
FROM 
    [dbo].[ROUTE_SCHEDULE_PER_STATION] rs
	LEFT JOIN [dbo].[ROUTES] r  ON   rs.ROUTES_ID = r.ROUTES_ID
	LEFT JOIN [dbo].[STATION] s ON rs.STATION_ID = s.STATION_ID
	LEFT JOIN [dbo].[SCHEDULE] sh ON rs.SCHEDULE_ID = sh.SCHEDULE_ID

WHERE
rs.STATION_ORDER = 1 AND sh.DAY_OF_WEEK = 'Weekends'

	;
GO

--Example to view weekend schedule
--SELECT * FROM VIEW_WEEKEND_SCHEDULE_SUMMARY_BY_ROUTE ORDER BY ROUTES_ID

----------------------------------------------------------------------------------------
IF OBJECT_ID('[dbo].[VIEW_SUMMARY_BY_ROUTE]', 'V') IS NOT NULL
    DROP VIEW [dbo].[VIEW_SUMMARY_BY_ROUTE];
GO

CREATE VIEW VIEW_SUMMARY_BY_ROUTE AS
SELECT
r.[NAME] AS ROUTE_NAME,
COUNT (DISTINCT rs.STATION_ID) AS [NO_OF_STATIONS],
COUNT(DISTINCT sh.TRAIN_ID) AS [NO_OF_TRAINS]

FROM 
    [dbo].[ROUTE_SCHEDULE_PER_STATION] rs
	LEFT JOIN [dbo].[ROUTES] r  ON   rs.ROUTES_ID = r.ROUTES_ID
	LEFT JOIN [dbo].[STATION] s ON rs.STATION_ID = s.STATION_ID
	LEFT JOIN [dbo].[SCHEDULE] sh ON rs.SCHEDULE_ID = sh.SCHEDULE_ID


GROUP BY
r.[NAME]

	;
GO

--Example to see entire summary
--SELECT * FROM VIEW_SUMMARY_BY_ROUTE
----------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------------
/*
Comprehensive Rider Information View
This view involves riders, transaction and transit_card data.
Provide us the detailed view of each rider's account, card balance, and transaction history.
*/
--------------------------------------------------------------------------------------------------------------------------------
IF OBJECT_ID('[dbo].[VIEW_DETAILED_RIDER_INFO]', 'V') IS NOT NULL
    DROP VIEW [dbo].[VIEW_DETAILED_RIDER_INFO];
GO
CREATE VIEW VIEW_DETAILED_RIDER_INFO AS
SELECT 
    r.RIDER_ID,
    r.RIDER_ACCOUNT_NO,
    r.CONTACT_INFORMATION,
    tc.CARD_ID,
    tc.BALANCE,
    tc.CARD_EXPIRY_DATE,
    tc.CARD_ACTIVE_STATUS,
    t.TRANSACTION_ID,
    t.TRANSACTION_TIMESTAMP,
    t.TRANSACTION_TYPE
FROM 
    RIDER r
JOIN 
    TRANSIT_CARD tc ON r.RIDER_ID = tc.RIDER_ID
LEFT JOIN 
    dbo.[TRANSACTION] t ON tc.CARD_ID = t.CARD_ID;
GO
-- To Execute , you can have your own conditions, example for a particular rider
-- Select * from VIEW_DETAILED_RIDER_INFO
-- WHERE RIDER_ID = 100002

--------------------------------------------------------------------------------------------------------------------------------
/*
Enhanced Station Schedule and Traffic View
This view involves schedules, stations, routes.
This view would present a holistic picture of each station, including the schedules of incoming and outgoing trains, route details, station facilities.
Perhaps with the maintainence updates
*/
--------------------------------------------------------------------------------------------------------------------------------

IF OBJECT_ID('[dbo].VIEW_ENHANCED_STATION_SCHEDULE_TRAFFIC', 'V') IS NOT NULL
    DROP VIEW [dbo].VIEW_ENHANCED_STATION_SCHEDULE_TRAFFIC;
GO

CREATE VIEW VIEW_ENHANCED_STATION_SCHEDULE_TRAFFIC AS
SELECT 
    st.STATION_ID, 
    st.NAME AS STATION_NAME, 
    st.[LOCATION] AS STATION_LOCATION,
    sm.NAME AS STATION_MANAGER,
    r.ROUTES_ID, 
    r.NAME AS ROUTE_NAME,
    r.DISTANCE AS ROUTE_DISTANCE,
    r.ESTIMATED_TRAVEL_TIME,
    r.PRICE AS ROUTE_PRICE,
    sch.SCHEDULE_ID, 
    sch.TRAIN_ID, 
    sch.DAY_OF_WEEK, 
    t.REGISTRATION_NUMBER,
    t.CAPACITY,
    t.MAINTENANCE_STATUS,
    rss.ARRIVAL_TIME, 
    rss.DEPARTURE_TIME,
    (SELECT COUNT(*) FROM [JOURNEY_TRANSACTION] jt WHERE jt.ROUTES_ID = r.ROUTES_ID) AS TOTAL_JOURNEYS_ON_ROUTE
FROM 
    STATION st
LEFT JOIN 
    EMPLOYEE sm ON st.STATION_MANAGER_ID = sm.EMPLOYEE_ID
JOIN 
    ROUTE_SCHEDULE_PER_STATION rss ON st.STATION_ID = rss.STATION_ID
JOIN 
    ROUTES r ON rss.ROUTES_ID = r.ROUTES_ID
JOIN 
    [SCHEDULE] sch ON rss.SCHEDULE_ID = sch.SCHEDULE_ID
JOIN 
    TRAIN t ON sch.TRAIN_ID = t.TRAIN_ID;
GO

--To Execute, you can have your own conditions, this example we are checking for the particular station
-- SELECT * FROM VIEW_ENHANCED_STATION_SCHEDULE_TRAFFIC
-- WHERE STATION_ID = 700

USE MASTER 
GO