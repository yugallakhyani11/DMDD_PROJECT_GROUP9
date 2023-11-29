USE DAMG6210_PROJECT;
GO

-- Insert statements for EMPLOYEE table
    -- Drivers (15)
OPEN SYMMETRIC KEY EMPLOYEE_SSN_KEY
    DECRYPTION BY CERTIFICATE EMPLOYEE_SSN_CERT;
   INSERT INTO [dbo].[EMPLOYEE] ([NAME], EMAIL_ID, [ROLE], BIRTHDATE, SSN, ENCRYPTED_SSN) VALUES
   -- Drivers (15)
   ('John Doe', 'john.doe@email.com', 'Driver', '1990-05-15', '123-45-6789', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '123-45-6789')),
   ('Jane Smith', 'jane.smith@email.com', 'Driver', '1985-12-10', '234-56-7890', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '234-56-7890')),
   ('Bob Johnson', 'bob.johnson@email.com', 'Driver', '1988-07-23', '345-67-8901', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '345-67-8901')),
   ('Alice Williams', 'alice.williams@email.com', 'Driver', '1992-03-18', '456-78-9012', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '456-78-9012')),
   ('Charlie Brown', 'charlie.brown@email.com', 'Driver', '1987-11-30', '567-89-0123', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '567-89-0123')),
   ('Eva Miller', 'eva.miller@email.com', 'Driver', '1995-08-05', '678-90-1234', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '678-90-1234')),
   ('Frank Wilson', 'frank.wilson@email.com', 'Driver', '1983-02-14', '789-01-2345', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '789-01-2345')),
   ('Grace Davis', 'grace.davis@email.com', 'Driver', '1991-09-22', '890-12-3456', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '890-12-3456')),
   ('Henry Taylor', 'henry.taylor@email.com', 'Driver', '1989-06-07', '901-23-4567', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '901-23-4567')),
   ('Ivy Martinez', 'ivy.martinez@email.com', 'Driver', '1994-12-01', '012-34-5678', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '012-34-5678')),
   ('Jack Robinson', 'jack.robinson@email.com', 'Driver', '1986-04-25', '123-45-6789', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '123-45-6789')),
   ('Katie White', 'katie.white@email.com', 'Driver', '1993-10-12', '234-56-7890', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '234-56-7890')),
   ('Liam Harris', 'liam.harris@email.com', 'Driver', '1984-07-18', '345-67-8901', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '345-67-8901')),
   ('Mia Turner', 'mia.turner@email.com', 'Driver', '1998-01-30', '456-78-9012', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '456-78-9012')),
   ('Noah Anderson', 'noah.anderson@email.com', 'Driver', '1982-09-11', '567-89-0123', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '567-89-0123')),
   -- Station Managers (12)
   ('Olivia Scott', 'olivia.scott@email.com', 'Station Manager', '1978-09-22', '678-90-1234', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '678-90-1234')),
   ('Patrick Clark', 'patrick.clark@email.com', 'Station Manager', '1982-03-07', '789-01-2345', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '789-01-2345')),
   ('Quinn Hall', 'quinn.hall@email.com', 'Station Manager', '1985-11-15', '890-12-3456', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '890-12-3456')),
   ('Rachel Lee', 'rachel.lee@email.com', 'Station Manager', '1973-06-29', '901-23-4567', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '901-23-4567')),
   ('Samuel Adams', 'samuel.adams@email.com', 'Station Manager', '1990-01-12', '012-34-5678', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '012-34-5678')),
   ('Tina Wright', 'tina.wright@email.com', 'Station Manager', '1988-08-18', '123-45-6789', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '123-45-6789')),
   ('Ulysses Brown', 'ulysses.brown@email.com', 'Station Manager', '1984-04-03', '234-56-7890', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '234-56-7890')),
   ('Bryan Evans', 'bryan.evans@email.com', 'Station Manager', '1993-10-20', '345-67-8901', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '345-67-8901')),
   ('Cynthia Murphy', 'cynthia.murphy@email.com', 'Station Manager', '1981-12-05', '456-78-9012', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '456-78-9012')),
   ('David Garcia', 'david.garcia@email.com', 'Station Manager', '1975-07-14', '567-89-0123', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '567-89-0123')),
   ('Emily Wright', 'emily.wright@email.com', 'Station Manager', '1989-09-28', '678-90-1234', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '678-90-1234')),
   ('Felix Adams', 'felix.adams@email.com', 'Station Manager', '1995-05-02', '789-01-2345', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '789-01-2345')),
   -- Maintenance Managers (2)
   -- Maintenance Managers (2)
('Victoria Hayes', 'victoria.hayes@email.com', 'Maintenance Manager', '1972-11-18', '890-12-3456', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '890-12-3456')),
('William King', 'william.king@email.com', 'Maintenance Manager', '1980-07-30', '901-23-4567', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '901-23-4567')),

-- Incident Validators (2)
('Xena Carter', 'xena.carter@email.com', 'Incident Validator', '1993-01-25', '012-34-5678', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '012-34-5678')),
('Yasmine Patel', 'yasmine.patel@email.com', 'Incident Validator', '1990-08-14', '123-45-6789', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '123-45-6789')),

-- Complaint Resolvers (2)
('Zane Foster', 'zane.foster@email.com', 'Complaint Resolver', '1988-06-03', '234-56-7890', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '234-56-7890')),
('Ava Taylor', 'ava.taylor@email.com', 'Complaint Resolver', '1984-12-28', '345-67-8901', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '345-67-8901')),

-- Regular Employees (Rest)
('Gabriel Torres', 'gabriel.torres@email.com', 'Regular', '1987-04-20', '456-78-9012', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '456-78-9012')),
('Haley Martinez', 'haley.martinez@email.com', 'Regular', '1991-09-05', '567-89-0123', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '567-89-0123')),
('Isaac Thompson', 'isaac.thompson@email.com', 'Regular', '1984-02-12', '678-90-1234', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '678-90-1234')),
('Jasmine Carter', 'jasmine.carter@email.com', 'Regular', '1989-07-28', '789-01-2345', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '789-01-2345')),
('Kevin Adams', 'kevin.adams@email.com', 'Regular', '1995-12-15', '890-12-3456', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '890-12-3456')),
('Lila Scott', 'lila.scott@email.com', 'Regular', '1982-10-08', '901-23-4567', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '901-23-4567')),
('Mason Davis', 'mason.davis@email.com', 'Regular', '1998-06-22', '012-34-5678', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '012-34-5678')),
('Natalie Turner', 'natalie.turner@email.com', 'Regular', '1986-11-10', '123-45-6789', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '123-45-6789')),
('Oscar Brown', 'oscar.brown@email.com', 'Regular', '1993-04-03', '234-56-7890', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '234-56-7890')),
('Penelope Harris', 'penelope.harris@email.com', 'Regular', '1980-08-19', '345-67-8901', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '345-67-8901')),
('Quincy White', 'quincy.white@email.com', 'Regular', '1992-03-30', '456-78-9012', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '456-78-9012')),
('Ruby Wilson', 'ruby.wilson@email.com', 'Regular', '1987-09-14', '567-89-0123', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '567-89-0123')),
('Santiago Miller', 'santiago.miller@email.com', 'Regular', '1996-01-27', '678-90-1234', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '678-90-1234')),
('Taylor Clark', 'taylor.clark@email.com', 'Regular', '1984-05-18', '789-01-2345', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '789-01-2345')),
('Uma Anderson', 'uma.anderson@email.com', 'Regular', '1990-12-08', '890-12-3456', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '890-12-3456')),

   -- Additional Employees
('William Baker', 'william.baker@email.com', 'Station Manager', '1980-06-12', '456-78-9012', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '456-78-9012')),
('Amelia Wright', 'amelia.wright@email.com', 'Station Manager', '1984-09-28', '567-89-0123', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '567-89-0123')),
('Aarav Patel', 'aarav.patel@email.com', 'Station Manager', '1989-12-15', '678-90-1234', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '678-90-1234')),
('Isha Singh', 'isha.singh@email.com', 'Station Manager', '1983-03-02', '789-01-2345', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '789-01-2345')),
('Michael Chang', 'michael.chang@email.com', 'Driver', '1995-07-20', '890-12-3456', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '890-12-3456')),
('Sara Rodriguez', 'sara.rodriguez@email.com', 'Driver', '1990-04-18', '901-23-4567', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '901-23-4567')),
('Hiroshi Tanaka', 'hiroshi.tanaka@email.com', 'Driver', '1987-11-10', '012-34-5678', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '012-34-5678')),
('Isabella Santos', 'isabella.santos@email.com', 'Driver', '1992-01-25', '123-45-6789', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '123-45-6789')),
('Ji-Won Kim', 'jiwon.kim@email.com', 'Driver', '1986-08-15', '234-56-7890', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '234-56-7890')),
('Luca Rossi', 'luca.rossi@email.com', 'Driver', '1994-05-30', '345-67-8901', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '345-67-8901')),
('Mai Nguyen', 'mai.nguyen@email.com', 'Driver', '1988-12-03', '456-78-9012', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '456-78-9012')),
('Gabriel Hernandez', 'gabriel.hernandez@email.com', 'Driver', '1993-09-08', '567-89-0123', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '567-89-0123')),
('Yuki Yamamoto', 'yuki.yamamoto@email.com', 'Driver', '1997-02-17', '678-90-1234', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '678-90-1234')),
('Olivia Li', 'olivia.li@email.com', 'Driver', '1984-04-22', '789-01-2345', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '789-01-2345')),
('Carlos Fernandez', 'carlos.fernandez@email.com', 'Driver', '1989-10-11', '890-12-3456', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '890-12-3456')),
('Mei Chen', 'mei.chen@email.com', 'Driver', '1982-07-28', '901-23-4567', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '901-23-4567')),
('Alejandro Ruiz', 'alejandro.ruiz@email.com', 'Driver', '1991-06-14', '012-34-5678', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '012-34-5678')),
('Anubhav Patel', 'anubhav.patel@email.com', 'Driver', '1985-03-05', '123-45-6789', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '123-45-6789')),
('Yuna Kim', 'yuna.kim@email.com', 'Driver', '1990-08-20', '234-56-7890', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '234-56-7890')),
('Luiz Silva', 'luiz.silva@email.com', 'Driver', '1987-01-12', '345-67-8901', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '345-67-8901')),
('Ananya Gupta', 'ananya.gupta@email.com', 'Driver', '1996-11-07', '456-78-9012', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '456-78-9012')),
('Haruto Sato', 'haruto.sato@email.com', 'Driver', '1983-09-25', '567-89-0123', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '567-89-0123')),
('Sophia Wang', 'sophia.wang@email.com', 'Driver', '1998-04-30', '678-90-1234', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '678-90-1234')),
('Ravi Kumar', 'ravi.kumar@email.com', 'Driver', '1986-12-08', '789-01-2345', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '789-01-2345')),
('Faisal Ahmed', 'faisal.ahmed@email.com', 'Driver', '1992-05-18', '890-12-3456', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '890-12-3456')),
('Aisha Malik', 'aisha.malik@email.com', 'Driver', '1989-10-01', '901-23-4567', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '901-23-4567')),
('Omar Khan', 'omar.khan@email.com', 'Driver', '1984-07-22', '012-34-5678', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '012-34-5678')),
('Zainab Ali', 'zainab.ali@email.com', 'Driver', '1993-02-14', '123-45-6789', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '123-45-6789')),
('Muhammad Abbas', 'muhammad.abbas@email.com', 'Driver', '1988-09-03', '234-56-7890', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '234-56-7890')),
('Fatima Hassan', 'fatima.hassan@email.com', 'Driver', '1994-06-17', '345-67-8901', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '345-67-8901')),
('Ibrahim Shah', 'ibrahim.shah@email.com', 'Driver', '1981-04-09', '456-78-9012', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '456-78-9012')),
('Khadija Rahman', 'khadija.rahman@email.com', 'Driver', '1990-11-26', '567-89-0123', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '567-89-0123')),
('Ahmed Hussain', 'ahmed.hussain@email.com', 'Driver', '1985-08-05', '678-90-1234', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '678-90-1234')),
('Nadia Ahmed', 'nadia.ahmed@email.com', 'Driver', '1997-01-30', '789-01-2345', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '789-01-2345')),
('Samiya Khan', 'samiya.khan@email.com', 'Driver', '1982-03-18', '890-12-3456', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '890-12-3456')),
('Yusuf Ali', 'yusuf.ali@email.com', 'Driver', '1991-10-12', '901-23-4567', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '901-23-4567')),
('Mariam Khan', 'mariam.khan@email.com', 'Driver', '1987-05-22', '012-34-5678', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '012-34-5678')),
('Imran Malik', 'imran.malik@email.com', 'Driver', '1996-09-28', '123-45-6789', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '123-45-6789')),
('Safia Ahmed', 'safia.ahmed@email.com', 'Driver', '1984-12-15', '234-56-7890', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '234-56-7890')),
('Rahim Ali', 'rahim.ali@email.com', 'Driver', '1989-07-02', '345-67-8901', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '345-67-8901')),
('Amina Hussain', 'amina.hussain@email.com', 'Station Manager', '1982-01-08', '456-78-9012', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '456-78-9012')),
('Mustafa Khan', 'mustafa.khan@email.com', 'Station Manager', '1987-06-30', '567-89-0123', EncryptByKey(Key_GUID('EMPLOYEE_SSN_KEY'), '567-89-0123'));
CLOSE SYMMETRIC KEY EMPLOYEE_SSN_KEY;


-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Insert statements for ROUTES table
INSERT INTO [dbo].[ROUTES] (ROUTES_CODE,[NAME], DISTANCE, ESTIMATED_TRAVEL_TIME, PRICE) VALUES 
    ('GLB','Green Line B', 10, '01:30:00',2.50),
    ('GLC','Green Line C', 15, '01:15:00',2.50),
    ('GLD','Green Line D', 20, '01:15:00',2.50),
    ('GLE','Green Line E', 12, '01:30:00',2.50),
    ('OL','Orange Line', 18, '01:20:00',3.75);

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Insert statements for RIDER table
INSERT INTO [dbo].[RIDER] ([CONTACT_INFORMATION], [RIDER_STATUS]) VALUES 
    (6177794123,'Active'),
    (8568438472,'Active'),
    (8516145101,'Active'),
    (2556842960,'Active'),
    (2898664749,'Active'),
    (6829892318,'Active'),
    (4046959318,'Active'),
    (1068742733,'Active'),
    (8978012987,'Active'),
    (1653890777,'Active'),
    (6145943899,'Active'),
    (1929504146,'Active'),
    (5233598513,'Active'),
    (7954242682,'Active'),
    (9430020248,'Active'),
    (9902077331,'Active'),
    (9858924138,'Active'),
    (4849992684,'Active'),
    (4434391203,'Active'),
    (8217602310,'Active'),
    (2509667681,'Active'),
    (4251568055,'Active'),
    (4805095768,'Active'),
    (3640278711,'Active'),
    (6563909522,'Active'),
    (3952126249,'Active'),
    (7179556178,'Active'),
    (4344048901,'Active'),
    (8734620855,'Active'),
    (2960178784,'Active'),
    (9534508870,'Active'),
    (3252921921,'Active'),
    (1818772213,'Active'),
    (4702269802,'Active'),
    (6059016346,'Active'),
    (2061648131,'Active'),
    (1805633330,'Inactive'),
    (2877124407,'Inactive'),
    (2082839201,'Inactive'),
    (6365759271,'Inactive'),
    (6470155095,'Inactive'),
    (3272992368,'Inactive'),
    (4959868180,'Inactive'),
    (1141866459,'Inactive'),
    (4162952577,'Inactive'),
    (6149443497,'Inactive'),
    (7832071063,'Inactive'),
    (4360936281,'Inactive');

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Insert statement for TRANSIT CARD
INSERT INTO [dbo].[TRANSIT_CARD] ([BALANCE], [RIDER_ID], [CARD_EXPIRY_DATE], [CARD_ACTIVE_STATUS]) VALUES 
    (50.00, 100000, '2023-12-01', 1),
    (75.50, 100001, '2024-11-15', 1),
    (30.25, 100002, '2024-01-05', 1),
    (42.75, 100003, '2024-12-10', 1),
    (60.00, 100004, '2024-02-01', 1),
    (35.20, 100005, '2023-11-25', 0),
    (90.50, 100006, '2023-12-15', 1),
    (25.00, 100007, '2024-01-20', 1),
    (55.75, 100008, '2024-11-30', 1),
    (40.80, 100009, '2023-12-05', 1),
    (70.20, 100010, '2024-01-10', 1),
    (80.50, 100011, '2023-12-08', 1),
    (45.25, 100012, '2024-11-18', 1),
    (65.75, 100013, '2023-12-25', 0),
    (50.00, 100014, '2024-01-15', 1),
    (55.50, 100015, '2024-11-28', 1),
    (32.25, 100016, '2024-12-12', 1),
    (75.00, 100017, '2024-01-01', 1),
    (48.20, 100018, '2024-11-22', 0),
    (60.75, 100019, '2024-12-18', 1),
    (45.50, 100020, '2024-02-05', 1),
    (80.25, 100021, '2023-12-03', 0),
    (55.00, 100022, '2024-11-20', 1),
    (37.75, 100023, '2024-01-15', 1),
    (65.00, 100024, '2023-12-10', 0),
    (30.20, 100025, '2024-11-25', 0),
    (70.50, 100026, '2024-01-20', 1),
    (42.00, 100027, '2023-12-20', 1),
    (58.75, 100028, '2024-11-30', 1),
    (48.80, 100029, '2024-01-05', 1),
    (35.20, 100030, '2023-12-15', 0),
    (60.50, 100031, '2023-12-10', 1),
    (25.25, 100032, '2024-02-01', 1),
    (90.00, 100033, '2023-11-15', 0),
    (55.20, 100034, '2024-01-10', 1),
    (40.75, 100035, '2023-12-08', 1),
    (72.25, 100036, '2023-11-18', 0),
    (47.50, 100037, '2023-12-25', 1),
    (68.00, 100038, '2024-01-15', 1),
    (33.25, 100039, '2023-11-28', 0),
    (50.00, 100040, '2024-02-12', 1),
    (75.50, 100041, '2024-02-03', 1),
    (30.25, 100042, '2024-04-20', 1),
    (42.75, 100043, '2024-01-15', 0),
    (60.00, 100044, '2023-05-10', 1),
    (35.20, 100045, '2023-11-25', 0),
    (90.50, 100046, '2024-06-20', 1),
    (25.00, 100047, '2023-08-20', 0);   

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Insert statements for DRIVER table
INSERT INTO [dbo].[DRIVER] (DRIVER_ID, LICENSE_NO, LICENCSE_EXPIRYDATE) VALUES
    (100, 'DL123456', '2023-12-31'),
    (101, 'DL789012', '2024-06-30'),
    (102, 'DL345678', '2023-08-15'),
    (103, 'DL901234', '2025-02-28'),
    (104, 'DL567890', '2024-11-30'),
    (105, 'DL123789', '2023-10-31'),
    (106, 'DL456012', '2025-05-15'),
    (107, 'DL789345', '2024-09-30'),
    (108, 'DL012456', '2023-04-15'),
    (109, 'DL345678', '2025-07-31'),
    (110, 'DL678901', '2024-02-28'),
    (111, 'DL901234', '2023-11-30'),
    (112, 'DL123456', '2025-06-15'),
    (113, 'DL456789', '2024-12-31'),
    (114, 'DL789012', '2023-09-30'),
    (168, 'DL168ABC', '2025-06-30'),
    (169, 'DL169XYZ', '2026-04-15'),
    (170, 'DL170LMN', '2025-09-22'),
    (171, 'DL171PQR', '2027-02-28'),
    (172, 'DL172JKL', '2026-11-10'),
    (173, 'DL173DEF', '2025-08-12'),
    (174, 'DL174GHI', '2027-05-19'),
    (175, 'DL175UVW', '2026-10-03'),
    (176, 'DL176STU', '2025-12-25'),
    (177, 'DL177NOP', '2027-08-07'),
    (178, 'DL178QRS', '2025-07-14'),
    (179, 'DL179XYZ', '2026-09-18'),
    (180, 'DL180ABC', '2025-03-05'),
    (181, 'DL181JKL', '2027-04-30'),
    (182, 'DL182PQR', '2026-08-15'),
    (183, 'DL183GHI', '2025-11-28'),
    (184, 'DL184STU', '2027-01-20'),
    (185, 'DL185DEF', '2026-06-08'),
    (186, 'DL186NOP', '2025-05-11'),
    (187, 'DL187UVW', '2027-07-02');

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Insert statements for TRAIN table
-- Double Car (18 records)
INSERT INTO [dbo].[TRAIN] ([TYPE], REGISTRATION_NUMBER, CAPACITY, MAINTENANCE_STATUS) VALUES 
    ('Double Car', 'DC123', 200, 'Good condition'),
    ('Double Car', 'DC456', 200, 'Good condition'),
    ('Double Car', 'DC789', 200, 'Good condition'),
    ('Double Car', 'DC101', 200, 'Good condition'),
    ('Double Car', 'DC102', 200, 'Good condition'),
    ('Double Car', 'DC103', 200, 'Good condition'),
    ('Double Car', 'DC104', 200, 'Needs Maintenance'),
    ('Double Car', 'DC105', 200, 'Needs Maintenance'),
    ('Double Car', 'DC112', 200, 'Good condition'),
    ('Double Car', 'DC113', 200, 'Good condition'),
    ('Double Car', 'DC114', 200, 'Needs Maintenance'),
    ('Double Car', 'DC115', 200, 'Needs Maintenance'),

    -- Single Car (15 records)
    ('Single Car', 'SC123', 100, 'Good condition'),
    ('Single Car', 'SC456', 100, 'Good condition'),
    ('Single Car', 'SC789', 100, 'Good condition'),
    ('Single Car', 'SC101', 100, 'Good condition'),
    ('Single Car', 'SC102', 100, 'Good condition'),
    ('Single Car', 'SC103', 100, 'Good condition'),
    ('Single Car', 'SC104', 100, 'Needs Maintenance'),
    ('Single Car', 'SC401', 100, 'Good condition'),
    ('Single Car', 'SC402', 100, 'Good condition'),
    ('Single Car', 'SC403', 100, 'Good condition'),
    ('Single Car', 'SC404', 100, 'Needs Maintenance'),
    ('Single Car', 'SC105', 100, 'Needs Maintenance'),

    -- 8 Car (9 records)
    ('8 Car', '8C123', 800, 'Good condition'),
    ('8 Car', '8C456', 800, 'Good condition'),
    ('8 Car', '8C101', 800, 'Good condition'),
    ('8 Car', '8C102', 800, 'Good condition'),
    ('8 Car', '8C103', 800, 'Needs Maintenance'),
    ('8 Car', '8C104', 800, 'In Maintenance'),
    ('8 Car', '8C113', 800, 'Needs Maintenance'),
    ('8 Car', '8C114', 800, 'In Maintenance'),

    -- Maintenance Trains
        
    ('Double Car', 'DC117', 200, 'In Maintenance'),
    ('Single Car', 'SC105', 100, 'In Maintenance'),
    ('Single Car', 'SC105', 100, 'In Maintenance');

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Insert statements for STATION table
INSERT INTO [dbo].[STATION] ([NAME], [LOCATION], STATION_MANAGER_ID) VALUES
    ('Boston College', 'Boston, MA', 115),
    ('Cleveland Circle', 'Boston, MA', 116),
    ('Riverside', 'Newton, MA', 117),
    ('Heath Street', 'Jamaica Plains, MA', 118),
    ('Kenmore', 'Boston, MA', 119),
    ('Copley', 'Boston, MA', 120),
    ('Haymarket', 'Boston, MA', 121),
    ('North Station', 'Boston, MA', 122),
    ('Lechmere', 'Cambridge, MA', 123),
    ('Oak Grove', 'Malden, MA', 124),
    ('Forest Hill', 'Jamaica Plain, MA', 125),
    ('Roxbury Crossing', 'Boston, MA', 126),
    ('BU Central', 'Boston, MA', 150),
    ('Fenway', 'Boston, MA', 151),
    ('Northeastern', 'Boston, MA', 152),
    ('Coolidge Corner', 'Brookline, MA', 153),
    ('Medford', 'Medford, MA', 188),
    ('Government Center', 'Boston, MA', 189);

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Insert Statements for SCHEDULE table

--  WEEKDAYS
    -- GREEN LINE B schedule 
    INSERT INTO [dbo].[SCHEDULE] (TRAIN_ID, DRIVER_ID, DAY_OF_WEEK) VALUES 
        (8701, 105, 'Weekdays'),
        (8701, 105, 'Weekdays'),
        (8701, 182, 'Weekdays'),
        (8701, 182, 'Weekdays'),
        (8704, 105, 'Weekdays'),
        (8704, 105, 'Weekdays'),
        (8704, 182, 'Weekdays'),
        (8704, 182, 'Weekdays'),
        (8707, 109, 'Weekdays'),
        (8707, 109, 'Weekdays'),
        (8707, 109, 'Weekdays'),
        (8707, 109, 'Weekdays'),
        (8711, 185, 'Weekdays'),
        (8711, 185, 'Weekdays'),
        (8716, 113, 'Weekdays'),
        (8716, 113, 'Weekdays'),
        (8716, 176, 'Weekdays'),
        (8716, 176, 'Weekdays'),
        (8720, 185, 'Weekdays'),
        (8720, 185, 'Weekdays');

    -- GREEN LINE C schedule 
    INSERT INTO [dbo].[SCHEDULE] (TRAIN_ID, DRIVER_ID, DAY_OF_WEEK) VALUES 
        (8700, 107, 'Weekdays'),
        (8700, 107, 'Weekdays'),
        (8700, 178, 'Weekdays'),
        (8700, 178, 'Weekdays'),
        (8703, 107, 'Weekdays'),
        (8703, 107, 'Weekdays'),
        (8703, 178, 'Weekdays'),
        (8703, 178, 'Weekdays'),
        (8708, 110, 'Weekdays'),
        (8708, 110, 'Weekdays'),
        (8708, 110, 'Weekdays'),
        (8708, 110, 'Weekdays'),
        (8710, 174, 'Weekdays'),
        (8710, 174, 'Weekdays'),
        (8715, 101, 'Weekdays'),
        (8715, 101, 'Weekdays'),
        (8715, 186, 'Weekdays'),
        (8715, 186, 'Weekdays'),
        (8721, 174, 'Weekdays'),
        (8721, 174, 'Weekdays');

    -- GREEN LINE D schedule 
    INSERT INTO [dbo].[SCHEDULE] (TRAIN_ID, DRIVER_ID, DAY_OF_WEEK) VALUES 
        (8706, 111, 'Weekdays'),
        (8706, 111, 'Weekdays'),
        (8706, 106, 'Weekdays'),
        (8706, 106, 'Weekdays'),
        (8712, 111, 'Weekdays'),
        (8712, 111, 'Weekdays'),
        (8712, 106, 'Weekdays'),
        (8712, 106, 'Weekdays'),
        (8713, 184, 'Weekdays'),
        (8713, 184, 'Weekdays'),
        (8713, 184, 'Weekdays'),
        (8718, 184, 'Weekdays'),
        (8718, 179, 'Weekdays'),
        (8718, 179, 'Weekdays'),
        (8722, 175, 'Weekdays'),
        (8722, 175, 'Weekdays'),
        (8722, 103, 'Weekdays'),
        (8723, 103, 'Weekdays'),
        (8723, 179, 'Weekdays'),
        (8723, 179, 'Weekdays');

    -- GREEN LINE E schedule 
    INSERT INTO [dbo].[SCHEDULE] (TRAIN_ID, DRIVER_ID, DAY_OF_WEEK) VALUES 
        (8702, 112, 'Weekdays'),
        (8702, 112, 'Weekdays'),
        (8702, 170, 'Weekdays'),
        (8702, 170, 'Weekdays'),
        (8705, 112, 'Weekdays'),
        (8705, 112, 'Weekdays'),
        (8705, 170, 'Weekdays'),
        (8705, 170, 'Weekdays'),
        (8709, 104, 'Weekdays'),
        (8709, 104, 'Weekdays'),
        (8709, 104, 'Weekdays'),
        (8709, 104, 'Weekdays'),
        (8714, 168, 'Weekdays'),
        (8714, 168, 'Weekdays'),
        (8717, 108, 'Weekdays'),
        (8717, 108, 'Weekdays'),
        (8717, 169, 'Weekdays'),
        (8717, 169, 'Weekdays'),
        (8719, 168, 'Weekdays'),
        (8719, 168, 'Weekdays');

    -- Orange Line 
    INSERT INTO [dbo].[SCHEDULE] (TRAIN_ID, DRIVER_ID, DAY_OF_WEEK) VALUES 
        (8724, 100, 'Weekdays'),
        (8724, 100, 'Weekdays'),
        (8724, 102, 'Weekdays'),
        (8724, 102, 'Weekdays'),
        (8725, 177, 'Weekdays'),
        (8725, 177, 'Weekdays'),
        (8726, 100, 'Weekdays'),
        (8726, 100, 'Weekdays'),
        (8727, 180, 'Weekdays'),
        (8727, 180, 'Weekdays'),
        (8728, 181, 'Weekdays'),
        (8728, 181, 'Weekdays'),
        (8728, 177, 'Weekdays'),
        (8728, 177, 'Weekdays'),
        (8730, 183, 'Weekdays'),
        (8730, 183, 'Weekdays');

--------------------------------------------------------------------------------------------------------------------------------

--  WEEKENDS
    -- GREEN LINE B schedule 
    INSERT INTO [dbo].[SCHEDULE] (TRAIN_ID, DRIVER_ID, DAY_OF_WEEK) VALUES 
        (8701, 109, 'Weekends'),
        (8701, 109, 'Weekends'),
        (8701, 176, 'Weekends'),
        (8701, 176, 'Weekends'),
        (8720, 113, 'Weekends'),
        (8720, 113, 'Weekends'),
        (8720, 185, 'Weekends'),
        (8720, 185, 'Weekends'),
        (8707, 109, 'Weekends'),
        (8707, 109, 'Weekends'),
        (8711, 182, 'Weekends'),
        (8711, 182, 'Weekends');


        -- GREEN LINE C schedule 
    INSERT INTO [dbo].[SCHEDULE] (TRAIN_ID, DRIVER_ID, DAY_OF_WEEK) VALUES 
        (8703, 101, 'Weekends'),
        (8703, 101, 'Weekends'),
        (8703, 178, 'Weekends'),
        (8703, 178, 'Weekends'),
        (8721, 186, 'Weekends'),
        (8721, 186, 'Weekends'),
        (8721, 174, 'Weekends'),
        (8721, 174, 'Weekends'),
        (8700, 110, 'Weekends'),
        (8700, 110, 'Weekends'),
        (8710, 101, 'Weekends'),
        (8710, 101, 'Weekends');


        -- GREEN LINE D schedule 
    INSERT INTO [dbo].[SCHEDULE] (TRAIN_ID, DRIVER_ID, DAY_OF_WEEK) VALUES 
        (8713, 175, 'Weekends'),
        (8713, 175, 'Weekends'),
        (8713, 103, 'Weekends'),
        (8713, 103, 'Weekends'),
        (8723, 106, 'Weekends'),
        (8723, 106, 'Weekends'),
        (8723, 179, 'Weekends'),
        (8723, 179, 'Weekends'),
        (8722, 184, 'Weekends'),
        (8722, 184, 'Weekends'),
        (8706, 175, 'Weekends'),
        (8706, 175, 'Weekends');


        -- GREEN LINE E schedule 
    INSERT INTO [dbo].[SCHEDULE] (TRAIN_ID, DRIVER_ID, DAY_OF_WEEK) VALUES 
        (8719, 169, 'Weekends'),
        (8719, 169, 'Weekends'),
        (8719, 168, 'Weekends'),
        (8719, 168, 'Weekends'),
        (8714, 108, 'Weekends'),
        (8714, 108, 'Weekends'),
        (8714, 170, 'Weekends'),
        (8714, 170, 'Weekends'),
        (8702, 112, 'Weekends'),
        (8702, 112, 'Weekends'),
        (8717, 169, 'Weekends'),
        (8717, 169, 'Weekends');

    --  ORANGE LINE schedule
    INSERT INTO [dbo].[SCHEDULE] (TRAIN_ID, DRIVER_ID, DAY_OF_WEEK) VALUES 
        (8724, 100, 'WEEKENDS'),
        (8724, 100, 'WEEKENDS'),
        (8724, 102, 'WEEKENDS'),
        (8724, 102, 'WEEKENDS'),
        (8725, 177, 'WEEKENDS'),
        (8725, 177, 'WEEKENDS'),
        (8728, 177, 'WEEKENDS'),
        (8728, 177, 'WEEKENDS'),
        (8726, 100, 'WEEKENDS'),
        (8726, 100, 'WEEKENDS'),
        (8727, 180, 'WEEKENDS'),
        (8727, 180, 'WEEKENDS');

--------------------------------------------------------------------------------------------------------------------------------

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Insert Statements for ROUTE_SCHEDULE_PER_STATION table

-- WEEKDAYS
    -- ROUTE SCHEDULE for GREEN LINE B
    INSERT INTO [dbo].[ROUTE_SCHEDULE_PER_STATION] (ROUTES_ID, STATION_ID, SCHEDULE_ID, ARRIVAL_TIME, DEPARTURE_TIME, STATION_ORDER)VALUES
        -- TRAIN 8701
        -- up
        (900, 700, 724000, NULL, '06:00 AM', 1),
        (900, 712, 724000, '06:10 AM', '06:12 AM', 2),
        (900, 704, 724000, '06:25 AM', '06:27 AM', 3),
        (900, 705, 724000, '06:33 AM', '06:35 AM', 4),
        (900, 706, 724000, '06:58 AM', '07:00 AM', 5),
        (900, 707, 724000, '07:15 AM', '07:17 AM', 6),
        (900, 708, 724000, '07:30 AM', NULL, 7),

        -- down
        (900, 708, 724001, NULL, '08:00 AM', 1),
        (900, 707, 724001, '08:20 AM', '08:22 AM', 2),
        (900, 706, 724001, '08:35 AM', '08:37 AM', 3),
        (900, 705, 724001, '08:48 AM', '08:50 AM', 4),
        (900, 704, 724001, '09:05 AM', '09:07 AM', 5),
        (900, 712, 724001, '09:14 AM', '09:16 AM', 6),
        (900, 700, 724001, '09:30 AM', NULL, 7),

        -- up
        (900, 700, 724002, NULL, '11:00 AM', 1),
        (900, 712, 724002, '11:10 AM', '11:12 AM', 2),
        (900, 704, 724002, '11:25 AM', '11:27 AM', 3),
        (900, 705, 724002, '11:33 AM', '11:35 AM', 4),
        (900, 706, 724002, '11:59 AM', '12:01 PM', 5),
        (900, 707, 724002, '12:15 PM', '12:17 PM', 6),
        (900, 708, 724002, '12:30 PM', NULL, 7),

        -- down
        (900, 708, 724003, NULL, '02:00 PM', 1),
        (900, 707, 724003, '02:20 PM', '02:22 PM', 2),
        (900, 706, 724003, '02:35 PM', '02:37 PM', 3),
        (900, 705, 724003, '02:48 PM', '02:50 PM', 4),
        (900, 704, 724003, '03:05 PM', '03:07 PM', 5),
        (900, 712, 724003, '03:14 PM', '03:16 PM', 6),
        (900, 700, 724003, '03:30 PM', NULL, 7),


        --  TRAIN 8704
        -- up
        (900, 700, 724004, NULL, '05:00 PM', 1),
        (900, 712, 724004, '05:10 PM', '05:12 PM', 2),
        (900, 704, 724004, '05:25 PM', '05:27 PM', 3),
        (900, 705, 724004, '05:33 PM', '05:35 PM', 4),
        (900, 706, 724004, '05:58 PM', '06:00 PM', 5),
        (900, 707, 724004, '06:15 PM', '06:17 PM', 6),
        (900, 708, 724004, '06:30 PM', NULL, 7),

        -- down
        (900, 708, 724005, NULL, '08:00 PM', 1),
        (900, 707, 724005, '08:20 PM', '08:22 PM', 2),
        (900, 706, 724005, '08:35 PM', '08:37 PM', 3),
        (900, 705, 724005, '08:48 PM', '08:50 PM', 4),
        (900, 704, 724005, '09:05 PM', '09:07 PM', 5),
        (900, 712, 724005, '09:14 PM', '09:16 PM', 6),
        (900, 700, 724005, '09:30 PM', NULL, 7),

        -- up
        (900, 700, 724006, NULL, '10:00 PM', 1),
        (900, 712, 724006, '10:10 PM', '10:12 PM', 2),
        (900, 704, 724006, '10:25 PM', '10:27 PM', 3),
        (900, 705, 724006, '10:33 PM', '10:35 PM', 4),
        (900, 706, 724006, '10:58 PM', '11:00 PM', 5),
        (900, 707, 724006, '11:15 PM', '11:17 PM', 6),
        (900, 708, 724006, '11:30 PM', NULL, 7),

        -- down
        (900, 708, 724007, NULL, '12:00 AM', 1),
        (900, 707, 724007, '12:20 AM', '12:22 AM', 2),
        (900, 706, 724007, '12:35 AM', '12:37 AM', 3),
        (900, 705, 724007, '12:48 AM', '12:50 AM', 4),
        (900, 704, 724007, '01:05 AM', '01:07 AM', 5),
        (900, 712, 724007, '01:14 AM', '01:16 AM', 6),
        (900, 700, 724007, '01:30 AM', NULL, 7),


        -- TRAIN 8707
        -- down
        (900, 708, 724008, NULL, '06:00 AM', 1),
        (900, 707, 724008, '06:20 AM', '06:22 AM', 2),
        (900, 706, 724008, '06:35 AM', '06:37 AM', 3),
        (900, 705, 724008, '06:48 AM', '06:50 AM', 4),
        (900, 704, 724008, '07:05 AM', '07:07 AM', 5),
        (900, 712, 724008, '07:14 AM', '07:16 AM', 6),
        (900, 700, 724008, '07:30 AM', NULL, 7),

        -- up
        (900, 700, 724009, NULL, '08:00 AM', 1),
        (900, 712, 724009, '08:10 AM', '08:12 AM', 2),
        (900, 704, 724009, '08:25 AM', '08:27 AM', 3),
        (900, 705, 724009, '08:33 AM', '08:35 AM', 4),
        (900, 706, 724009, '08:58 AM', '09:00 AM', 5),
        (900, 707, 724009, '09:15 AM', '09:17 AM', 6),
        (900, 708, 724009, '09:30 AM', NULL, 7),

        -- TRAIN 8720
        -- down
        (900, 708, 724010, NULL, '11:00 AM', 1),
        (900, 707, 724010, '11:20 AM', '11:22 AM', 2),
        (900, 706, 724010, '11:35 AM', '11:37 AM', 3),
        (900, 705, 724010, '11:48 AM', '11:50 AM', 4),
        (900, 704, 724010, '12:05 PM', '12:07 PM', 5),
        (900, 712, 724010, '12:14 PM', '12:16 PM', 6),
        (900, 700, 724010, '12:30 PM', NULL, 7),

        -- up
        (900, 700, 724011, NULL, '06:00 PM', 1),
        (900, 712, 724011, '06:10 PM', '06:12 PM', 2),
        (900, 704, 724011, '06:25 PM', '06:27 PM', 3),
        (900, 705, 724011, '06:33 PM', '06:35 PM', 4),
        (900, 706, 724011, '06:58 PM', '07:00 PM', 5),
        (900, 707, 724011, '07:15 PM', '07:17 PM', 6),
        (900, 708, 724011, '07:30 PM', NULL, 7),


        --  TRAIN 8711
        -- up
        (900, 700, 724012, NULL, '09:00 AM', 1),
        (900, 712, 724012, '09:10 AM', '09:12 AM', 2),
        (900, 704, 724012, '09:25 AM', '09:27 AM', 3),
        (900, 705, 724012, '09:33 AM', '09:35 AM', 4),
        (900, 706, 724012, '09:58 AM', '10:00 AM', 5),
        (900, 707, 724012, '10:15 AM', '10:17 AM', 6),
        (900, 708, 724012, '10:30 AM', NULL, 7),

        -- down 
        (900, 708, 724013, NULL, '06:00 PM', 1),
        (900, 707, 724013, '06:20 PM', '06:22 PM', 2),
        (900, 706, 724013, '06:35 PM', '06:37 PM', 3),
        (900, 705, 724013, '06:48 PM', '06:50 PM', 4),
        (900, 704, 724013, '07:05 PM', '07:07 PM', 5),
        (900, 712, 724013, '07:14 PM', '07:16 PM', 6),
        (900, 700, 724013, '07:30 PM', NULL, 7),


        -- TRAIN 8716
        -- down
        (900, 708, 724014, NULL, '09:00 AM', 1),
        (900, 707, 724014, '09:20 AM', '09:22 AM', 2),
        (900, 706, 724014, '09:35 AM', '09:37 AM', 3),
        (900, 705, 724014, '09:48 AM', '09:50 AM', 4),
        (900, 704, 724014, '10:05 AM', '10:07 AM', 5),
        (900, 712, 724014, '10:14 AM', '10:16 AM', 6),
        (900, 700, 724014, '10:30 AM', NULL, 7),

        -- up
        (900, 700, 724015, NULL, '02:00 PM', 1),
        (900, 712, 724015, '02:10 PM', '02:12 PM', 2),
        (900, 704, 724015, '02:25 PM', '02:27 PM', 3),
        (900, 705, 724015, '02:33 PM', '02:35 PM', 4),
        (900, 706, 724015, '02:58 PM', '03:00 PM', 5),
        (900, 707, 724015, '03:15 PM', '03:17 PM', 6),
        (900, 708, 724015, '03:30 PM', NULL, 7),

        -- down 
        (900, 708, 724016, NULL, '05:00 PM', 1),
        (900, 707, 724016, '05:20 PM', '05:22 PM', 2),
        (900, 706, 724016, '05:35 PM', '05:37 PM', 3),
        (900, 705, 724016, '05:48 PM', '05:50 PM', 4),
        (900, 704, 724016, '06:05 PM', '06:07 PM', 5),
        (900, 712, 724016, '06:14 PM', '06:16 PM', 6),
        (900, 700, 724016, '06:30 PM', NULL, 7),

        -- up
        (900, 700, 724017, NULL, '12:00 AM', 1),
        (900, 712, 724017, '12:10 AM', '12:12 AM', 2),
        (900, 704, 724017, '12:25 AM', '12:27 AM', 3),
        (900, 705, 724017, '12:33 AM', '12:35 AM', 4),
        (900, 706, 724017, '12:58 AM', '01:00 AM', 5),
        (900, 707, 724017, '01:15 AM', '01:17 AM', 6),
        (900, 708, 724017, '01:30 AM', NULL, 7),


        -- TRAIN 8720
        -- up
        (900, 700, 724018, NULL, '08:00 PM', 1),
        (900, 712, 724018, '08:10 PM', '08:12 PM', 2),
        (900, 704, 724018, '08:25 PM', '08:27 PM', 3),
        (900, 705, 724018, '08:33 PM', '08:35 PM', 4),
        (900, 706, 724018, '08:58 PM', '09:00 PM', 5),
        (900, 707, 724018, '09:15 PM', '09:17 PM', 6),
        (900, 708, 724018, '09:30 PM', NULL, 7),

        -- down 
        (900, 708, 724019, NULL, '10:00 PM', 1),
        (900, 707, 724019, '10:20 PM', '10:22 PM', 2),
        (900, 706, 724019, '10:35 PM', '10:37 PM', 3),
        (900, 705, 724019, '10:48 PM', '10:50 PM', 4),
        (900, 704, 724019, '11:05 PM', '11:07 PM', 5),
        (900, 712, 724019, '11:14 PM', '11:16 PM', 6),
        (900, 700, 724019, '11:30 PM', NULL, 7);

    --------------------------------------------------------------------------------------------------------------------------------

    -- ROUTE SCHEDULE for GREEN LINE C
    INSERT INTO [dbo].[ROUTE_SCHEDULE_PER_STATION] (ROUTES_ID, STATION_ID, SCHEDULE_ID, ARRIVAL_TIME, DEPARTURE_TIME, STATION_ORDER)VALUES
        -- up
        (901, 701, 724020, NULL, '06:00 AM', 1),
        (901, 715, 724020, '06:10 AM', '06:12 AM', 2),
        (901, 704, 724020, '06:25 AM', '06:27 AM', 3),
        (901, 705, 724020, '06:33 AM', '06:35 AM', 4),
        (901, 717, 724020, '06:58 AM', '07:00 AM', 5),
        (901, 706, 724020, '07:07 AM', '07:09 AM', 6),
        (901, 707, 724020, '07:15 AM', NULL, 7),

        -- down
        (901, 707, 724021, NULL, '08:00 AM', 1),
        (901, 706, 724021, '08:20 AM', '08:22 AM', 2),
        (901, 717, 724021, '08:35 AM', '08:37 AM', 3),
        (901, 705, 724021, '08:48 AM', '08:50 AM', 4),
        (901, 704, 724021, '09:05 AM', '09:07 AM', 5),
        (901, 715, 724021, '09:10 AM', '09:11 AM', 6),
        (901, 701, 724021, '09:15 AM', NULL, 7),

        -- up
        (901, 701, 724022, NULL, '11:00 AM', 1),
        (901, 715, 724022, '11:10 AM', '11:12 AM', 2),
        (901, 704, 724022, '11:25 AM', '11:27 AM', 3),
        (901, 705, 724022, '11:33 AM', '11:35 AM', 4),
        (901, 717, 724022, '11:59 AM', '12:01 PM', 5),
        (901, 706, 724022, '12:07 PM', '12:09 PM', 6),
        (901, 707, 724022, '12:15 PM', NULL, 7),

        -- down
        (901, 707, 724023, NULL, '02:00 PM', 1),
        (901, 706, 724023, '02:20 PM', '02:22 PM', 2),
        (901, 717, 724023, '02:35 PM', '02:37 PM', 3),
        (901, 705, 724023, '02:48 PM', '02:50 PM', 4),
        (901, 704, 724023, '03:05 PM', '03:07 PM', 5),
        (901, 715, 724023, '03:10 PM', '03:11 PM', 6),
        (901, 701, 724023, '03:15 PM', NULL, 7),

        -- up
        (901, 701, 724024, NULL, '05:00 PM', 1),
        (901, 715, 724024, '05:10 PM', '05:12 PM', 2),
        (901, 704, 724024, '05:25 PM', '05:27 PM', 3),
        (901, 705, 724024, '05:33 PM', '05:35 PM', 4),
        (901, 717, 724024, '05:58 PM', '06:00 PM', 5),
        (901, 706, 724024, '06:07 PM', '06:09 PM', 6),
        (901, 707, 724024, '06:15 PM', NULL, 7),

        -- down
        (901, 707, 724025, NULL, '08:00 PM', 1),
        (901, 706, 724025, '08:20 PM', '08:22 PM', 2),
        (901, 717, 724025, '08:35 PM', '08:37 PM', 3),
        (901, 705, 724025, '08:48 PM', '08:50 PM', 4),
        (901, 704, 724025, '09:05 PM', '09:07 PM', 5),
        (901, 715, 724025, '09:10 PM', '09:11 PM', 6),
        (901, 701, 724025, '09:15 PM', NULL, 7),

        -- up
        (901, 701, 724026, NULL, '10:00 PM', 1),
        (901, 715, 724026, '10:10 PM', '10:12 PM', 2),
        (901, 704, 724026, '10:25 PM', '10:27 PM', 3),
        (901, 705, 724026, '10:33 PM', '10:35 PM', 4),
        (901, 717, 724026, '10:58 PM', '11:00 PM', 5),
        (901, 706, 724026, '11:07 PM', '11:09 PM', 6),
        (901, 707, 724026, '11:15 PM', NULL, 7),

        -- down
        (901, 707, 724027, NULL, '12:00 AM', 1),
        (901, 706, 724027, '12:20 AM', '12:22 AM', 2),
        (901, 717, 724027, '12:35 AM', '12:37 AM', 3),
        (901, 705, 724027, '12:48 AM', '12:50 AM', 4),
        (901, 704, 724027, '01:05 AM', '01:07 AM', 5),
        (901, 715, 724027, '01:10 AM', '01:11 AM', 6),
        (901, 701, 724027, '01:15 AM', NULL, 7),

        -- down
        (901, 707, 724028, NULL, '06:00 AM', 1),
        (901, 706, 724028, '06:20 AM', '06:22 AM', 2),
        (901, 717, 724028, '06:35 AM', '06:37 AM', 3),
        (901, 705, 724028, '06:48 AM', '06:50 AM', 4),
        (901, 704, 724028, '07:05 AM', '07:07 AM', 5),
        (901, 715, 724028, '07:10 AM', '07:11 AM', 6),
        (901, 701, 724028, '07:15 AM', NULL, 7),

        -- up
        (901, 701, 724029, NULL, '08:00 AM', 1),
        (901, 715, 724029, '08:10 AM', '08:12 AM', 2),
        (901, 704, 724029, '08:25 AM', '08:27 AM', 3),
        (901, 705, 724029, '08:33 AM', '08:35 AM', 4),
        (901, 717, 724029, '08:58 AM', '09:00 AM', 5),
        (901, 706, 724029, '09:07 AM', '09:09 AM', 6),
        (901, 707, 724029, '09:15 AM', NULL, 7),

        -- down
        (901, 707, 724030, NULL, '11:00 AM', 1),
        (901, 706, 724030, '11:20 AM', '11:22 AM', 2),
        (901, 717, 724030, '11:35 AM', '11:37 AM', 3),
        (901, 705, 724030, '11:48 AM', '11:50 AM', 4),
        (901, 704, 724030, '12:05 PM', '12:07 PM', 5),
        (901, 715, 724030, '12:10 PM', '12:11 PM', 6),
        (901, 701, 724030, '12:15 PM', NULL, 7),

        -- up
        (901, 701, 724031, NULL, '06:00 PM', 1),
        (901, 715, 724031, '06:10 PM', '06:12 PM', 2),
        (901, 704, 724031, '06:25 PM', '06:27 PM', 3),
        (901, 705, 724031, '06:33 PM', '06:35 PM', 4),
        (901, 717, 724031, '06:58 PM', '07:00 PM', 5),
        (901, 706, 724031, '07:07 PM', '07:09 PM', 6),
        (901, 707, 724031, '07:15 PM', NULL, 7),

        -- up
        (901, 701, 724032, NULL, '09:00 AM', 1),
        (901, 715, 724032, '09:10 AM', '09:12 AM', 2),
        (901, 704, 724032, '09:25 AM', '09:27 AM', 3),
        (901, 705, 724032, '09:33 AM', '09:35 AM', 4),
        (901, 717, 724032, '09:58 AM', '10:00 AM', 5),
        (901, 706, 724032, '10:07 AM', '10:09 AM', 6),
        (901, 707, 724032, '10:15 AM', NULL, 7),

        -- down 
        (901, 707, 724033, NULL, '06:00 PM', 1),
        (901, 706, 724033, '06:20 PM', '06:22 PM', 2),
        (901, 717, 724033, '06:35 PM', '06:37 PM', 3),
        (901, 705, 724033, '06:48 PM', '06:50 PM', 4),
        (901, 704, 724033, '07:05 PM', '07:07 PM', 5),
        (901, 715, 724033, '07:10 PM', '07:11 PM', 6),
        (901, 701, 724033, '07:15 PM', NULL, 7),

        -- down
        (901, 707, 724034, NULL, '09:00 AM', 1),
        (901, 706, 724034, '09:20 AM', '09:22 AM', 2),
        (901, 717, 724034, '09:35 AM', '09:37 AM', 3),
        (901, 705, 724034, '09:48 AM', '09:50 AM', 4),
        (901, 704, 724034, '10:05 AM', '10:07 AM', 5),
        (901, 715, 724034, '10:10 AM', '10:11 AM', 6),
        (901, 701, 724034, '10:15 AM', NULL, 7),

        -- up
        (901, 701, 724035, NULL, '02:00 PM', 1),
        (901, 715, 724035, '02:10 PM', '02:12 PM', 2),
        (901, 704, 724035, '02:25 PM', '02:27 PM', 3),
        (901, 705, 724035, '02:33 PM', '02:35 PM', 4),
        (901, 717, 724035, '02:58 PM', '03:00 PM', 5),
        (901, 706, 724035, '03:07 PM', '03:09 PM', 6),
        (901, 707, 724035, '03:15 PM', NULL, 7),

        -- down 
        (901, 707, 724036, NULL, '05:00 PM', 1),
        (901, 706, 724036, '05:20 PM', '05:22 PM', 2),
        (901, 717, 724036, '05:35 PM', '05:37 PM', 3),
        (901, 705, 724036, '05:48 PM', '05:50 PM', 4),
        (901, 704, 724036, '06:05 PM', '06:07 PM', 5),
        (901, 715, 724036, '06:10 PM', '06:11 PM', 6),
        (901, 701, 724036, '06:15 PM', NULL, 7),

        -- up
        (901, 701, 724037, NULL, '12:00 AM', 1),
        (901, 715, 724037, '12:10 AM', '12:12 AM', 2),
        (901, 704, 724037, '12:25 AM', '12:27 AM', 3),
        (901, 705, 724037, '12:33 AM', '12:35 AM', 4),
        (901, 717, 724037, '12:58 AM', '01:00 AM', 5),
        (901, 706, 724037, '01:07 AM', '01:09 AM', 6),
        (901, 707, 724037, '01:15 AM', NULL, 7),

        -- up
        (901, 701, 724038, NULL, '08:00 PM', 1),
        (901, 715, 724038, '08:10 PM', '08:12 PM', 2),
        (901, 704, 724038, '08:25 PM', '08:27 PM', 3),
        (901, 705, 724038, '08:33 PM', '08:35 PM', 4),
        (901, 717, 724038, '08:58 PM', '09:00 PM', 5),
        (901, 706, 724038, '09:07 PM', '09:09 PM', 6),
        (901, 707, 724038, '09:15 PM', NULL, 7),

        -- down 
        (901, 707, 724039, NULL, '10:00 PM', 1),
        (901, 706, 724039, '10:20 PM', '10:22 PM', 2),
        (901, 717, 724039, '10:35 PM', '10:37 PM', 3),
        (901, 705, 724039, '10:48 PM', '10:50 PM', 4),
        (901, 704, 724039, '11:05 PM', '11:07 PM', 5),
        (901, 715, 724039, '11:10 PM', '11:11 PM', 6),
        (901, 701, 724039, '11:15 PM', NULL, 7);

    --------------------------------------------------------------------------------------------------------------------------------

    -- ROUTE SCHEDULE for GREEN LINE D
    INSERT INTO [dbo].[ROUTE_SCHEDULE_PER_STATION] (ROUTES_ID, STATION_ID, SCHEDULE_ID, ARRIVAL_TIME, DEPARTURE_TIME, STATION_ORDER)VALUES
        -- up
        (902, 702, 724040, NULL, '06:02 AM', 1),
        (902, 713, 724040, '06:12 AM', '06:14 AM', 2),
        (902, 704, 724040, '06:25 AM', '06:27 AM', 3),
        (902, 705, 724040, '06:33 AM', '06:35 AM', 4),
        (902, 717, 724040, '06:58 AM', '07:02 AM', 5),
        (902, 706, 724040, '07:07 AM', '07:09 AM', 6),
        (902, 707, 724040, '07:17 AM', NULL, 7),

        -- down
        (902, 707, 724041, NULL, '08:02 AM', 1),
        (902, 706, 724041, '08:20 AM', '08:22 AM', 2),
        (902, 717, 724041, '08:35 AM', '08:37 AM', 3),
        (902, 705, 724041, '08:48 AM', '08:50 AM', 4),
        (902, 704, 724041, '09:05 AM', '09:07 AM', 5),
        (902, 713, 724041, '09:12 AM', '09:13 AM', 6),
        (902, 702, 724041, '09:17 AM', NULL, 7),

        -- up
        (902, 702, 724042, NULL, '11:02 AM', 1),
        (902, 713, 724042, '11:12 AM', '11:14 AM', 2),
        (902, 704, 724042, '11:25 AM', '11:27 AM', 3),
        (902, 705, 724042, '11:33 AM', '11:35 AM', 4),
        (902, 717, 724042, '11:59 AM', '12:01 PM', 5),
        (902, 706, 724042, '12:07 PM', '12:09 PM', 6),
        (902, 707, 724042, '12:17 PM', NULL, 7),

        -- down
        (902, 707, 724043, NULL, '02:02 PM', 1),
        (902, 706, 724043, '02:20 PM', '02:22 PM', 2),
        (902, 717, 724043, '02:35 PM', '02:37 PM', 3),
        (902, 705, 724043, '02:48 PM', '02:50 PM', 4),
        (902, 704, 724043, '03:05 PM', '03:07 PM', 5),
        (902, 713, 724043, '03:12 PM', '03:13 PM', 6),
        (902, 702, 724043, '03:17 PM', NULL, 7),


        -- up
        (902, 702, 724044, NULL, '05:02 PM', 1),
        (902, 713, 724044, '05:12 PM', '05:14 PM', 2),
        (902, 704, 724044, '05:25 PM', '05:27 PM', 3),
        (902, 705, 724044, '05:33 PM', '05:35 PM', 4),
        (902, 717, 724044, '05:58 PM', '06:02 PM', 5),
        (902, 706, 724044, '06:07 PM', '06:09 PM', 6),
        (902, 707, 724044, '06:17 PM', NULL, 7),

        -- down
        (902, 707, 724045, NULL, '08:02 PM', 1),
        (902, 706, 724045, '08:20 PM', '08:22 PM', 2),
        (902, 717, 724045, '08:35 PM', '08:37 PM', 3),
        (902, 705, 724045, '08:48 PM', '08:50 PM', 4),
        (902, 704, 724045, '09:05 PM', '09:07 PM', 5),
        (902, 713, 724045, '09:12 PM', '09:13 PM', 6),
        (902, 702, 724045, '09:17 PM', NULL, 7),

        -- up
        (902, 702, 724046, NULL, '10:02 PM', 1),
        (902, 713, 724046, '10:12 PM', '10:14 PM', 2),
        (902, 704, 724046, '10:25 PM', '10:27 PM', 3),
        (902, 705, 724046, '10:33 PM', '10:35 PM', 4),
        (902, 717, 724046, '10:58 PM', '11:02 PM', 5),
        (902, 706, 724046, '11:07 PM', '11:09 PM', 6),
        (902, 707, 724046, '11:17 PM', NULL, 7),

        -- down
        (902, 707, 724047, NULL, '12:02 AM', 1),
        (902, 706, 724047, '12:20 AM', '12:22 AM', 2),
        (902, 717, 724047, '12:35 AM', '12:37 AM', 3),
        (902, 705, 724047, '12:48 AM', '12:50 AM', 4),
        (902, 704, 724047, '01:05 AM', '01:07 AM', 5),
        (902, 713, 724047, '01:12 AM', '01:13 AM', 6),
        (902, 702, 724047, '01:17 AM', NULL, 7),


        -- down
        (902, 707, 724048, NULL, '06:02 AM', 1),
        (902, 706, 724048, '06:20 AM', '06:22 AM', 2),
        (902, 717, 724048, '06:35 AM', '06:37 AM', 3),
        (902, 705, 724048, '06:48 AM', '06:50 AM', 4),
        (902, 704, 724048, '07:05 AM', '07:07 AM', 5),
        (902, 713, 724048, '07:12 AM', '07:13 AM', 6),
        (902, 702, 724048, '07:17 AM', NULL, 7),

        -- up
        (902, 702, 724049, NULL, '08:02 AM', 1),
        (902, 713, 724049, '08:12 AM', '08:14 AM', 2),
        (902, 704, 724049, '08:25 AM', '08:27 AM', 3),
        (902, 705, 724049, '08:33 AM', '08:35 AM', 4),
        (902, 717, 724049, '08:58 AM', '09:02 AM', 5),
        (902, 706, 724049, '09:07 AM', '09:09 AM', 6),
        (902, 707, 724049, '09:17 AM', NULL, 7),

        -- down
        (902, 707, 724050, NULL, '11:02 AM', 1),
        (902, 706, 724050, '11:20 AM', '11:22 AM', 2),
        (902, 717, 724050, '11:35 AM', '11:37 AM', 3),
        (902, 705, 724050, '11:48 AM', '11:50 AM', 4),
        (902, 704, 724050, '12:05 PM', '12:07 PM', 5),
        (902, 713, 724050, '12:12 PM', '12:13 PM', 6),
        (902, 702, 724050, '12:17 PM', NULL, 7),

        -- up
        (902, 702, 724051, NULL, '06:02 PM', 1),
        (902, 713, 724051, '06:12 PM', '06:14 PM', 2),
        (902, 704, 724051, '06:25 PM', '06:27 PM', 3),
        (902, 705, 724051, '06:33 PM', '06:35 PM', 4),
        (902, 717, 724051, '06:58 PM', '07:02 PM', 5),
        (902, 706, 724051, '07:07 PM', '07:09 PM', 6),
        (902, 707, 724051, '07:17 PM', NULL, 7),

        -- up
        (902, 702, 724052, NULL, '09:02 AM', 1),
        (902, 713, 724052, '09:12 AM', '09:14 AM', 2),
        (902, 704, 724052, '09:25 AM', '09:27 AM', 3),
        (902, 705, 724052, '09:33 AM', '09:35 AM', 4),
        (902, 717, 724052, '09:58 AM', '10:02 AM', 5),
        (902, 706, 724052, '10:07 AM', '10:09 AM', 6),
        (902, 707, 724052, '10:17 AM', NULL, 7),

        -- down 
        (902, 707, 724053, NULL, '06:02 PM', 1),
        (902, 706, 724053, '06:20 PM', '06:22 PM', 2),
        (902, 717, 724053, '06:35 PM', '06:37 PM', 3),
        (902, 705, 724053, '06:48 PM', '06:50 PM', 4),
        (902, 704, 724053, '07:05 PM', '07:07 PM', 5),
        (902, 713, 724053, '07:12 PM', '07:13 PM', 6),
        (902, 702, 724053, '07:17 PM', NULL, 7),

        -- down
        (902, 707, 724054, NULL, '09:02 AM', 1),
        (902, 706, 724054, '09:20 AM', '09:22 AM', 2),
        (902, 717, 724054, '09:35 AM', '09:37 AM', 3),
        (902, 705, 724054, '09:48 AM', '09:50 AM', 4),
        (902, 704, 724054, '10:05 AM', '10:07 AM', 5),
        (902, 713, 724054, '10:12 AM', '10:13 AM', 6),
        (902, 702, 724054, '10:17 AM', NULL, 7),

        -- up
        (902, 702, 724055, NULL, '02:02 PM', 1),
        (902, 713, 724055, '02:12 PM', '02:14 PM', 2),
        (902, 704, 724055, '02:25 PM', '02:27 PM', 3),
        (902, 705, 724055, '02:33 PM', '02:35 PM', 4),
        (902, 717, 724055, '02:58 PM', '03:02 PM', 5),
        (902, 706, 724055, '03:07 PM', '03:09 PM', 6),
        (902, 707, 724055, '03:17 PM', NULL, 7),

        -- down 
        (902, 707, 724056, NULL, '05:02 PM', 1),
        (902, 706, 724056, '05:20 PM', '05:22 PM', 2),
        (902, 717, 724056, '05:35 PM', '05:37 PM', 3),
        (902, 705, 724056, '05:48 PM', '05:50 PM', 4),
        (902, 704, 724056, '06:05 PM', '06:07 PM', 5),
        (902, 713, 724056, '06:12 PM', '06:13 PM', 6),
        (902, 702, 724056, '06:17 PM', NULL, 7),

        -- up
        (902, 702, 724057, NULL, '12:02 AM', 1),
        (902, 713, 724057, '12:12 AM', '12:14 AM', 2),
        (902, 704, 724057, '12:25 AM', '12:27 AM', 3),
        (902, 705, 724057, '12:33 AM', '12:35 AM', 4),
        (902, 717, 724057, '12:58 AM', '01:02 AM', 5),
        (902, 706, 724057, '01:07 AM', '01:09 AM', 6),
        (902, 707, 724057, '01:17 AM', NULL, 7),

        -- up
        (902, 702, 724058, NULL, '08:02 PM', 1),
        (902, 713, 724058, '08:12 PM', '08:14 PM', 2),
        (902, 704, 724058, '08:25 PM', '08:27 PM', 3),
        (902, 705, 724058, '08:33 PM', '08:35 PM', 4),
        (902, 717, 724058, '08:58 PM', '09:02 PM', 5),
        (902, 706, 724058, '09:07 PM', '09:09 PM', 6),
        (902, 707, 724058, '09:17 PM', NULL, 7),

        -- down 
        (902, 707, 724059, NULL, '10:02 PM', 1),
        (902, 706, 724059, '10:20 PM', '10:22 PM', 2),
        (902, 717, 724059, '10:35 PM', '10:37 PM', 3),
        (902, 705, 724059, '10:48 PM', '10:50 PM', 4),
        (902, 704, 724059, '11:05 PM', '11:07 PM', 5),
        (902, 713, 724059, '11:12 PM', '11:13 PM', 6),
        (902, 702, 724059, '11:17 PM', NULL, 7);

    --------------------------------------------------------------------------------------------------------------------------------

    -- ROUTE SCHEDULE for GREEN LINE E
    INSERT INTO [dbo].[ROUTE_SCHEDULE_PER_STATION] (ROUTES_ID, STATION_ID, SCHEDULE_ID, ARRIVAL_TIME, DEPARTURE_TIME, STATION_ORDER)VALUES
        -- TRAIN 8701
        -- up
        (903, 703, 724060, NULL, '06:07 AM', 1),
        (903, 714, 724060, '06:17 AM', '06:19 AM', 2),
        (903, 705, 724060, '06:32 AM', '06:34 AM', 3),
        (903, 717, 724060, '06:40 AM', '06:42 AM', 4),
        (903, 707, 724060, '07:05 AM', '07:07 AM', 5),
        (903, 708, 724060, '07:22 AM', '07:24 AM', 6),
        (903, 716, 724060, '07:37 AM', NULL, 7),

        -- down
        (903, 716, 724061, NULL, '08:07 AM', 1),
        (903, 708, 724061, '08:27 AM', '08:29 AM', 2),
        (903, 707, 724061, '08:42 AM', '08:44 AM', 3),
        (903, 717, 724061, '08:55 AM', '08:57 AM', 4),
        (903, 705, 724061, '09:12 AM', '09:14 AM', 5),
        (903, 714, 724061, '09:21 AM', '09:23 AM', 6),
        (903, 703, 724061, '09:37 AM', NULL, 7),

        -- up
        (903, 703, 724062, NULL, '11:07 AM', 1),
        (903, 714, 724062, '11:17 AM', '11:19 AM', 2),
        (903, 705, 724062, '11:32 AM', '11:34 AM', 3),
        (903, 717, 724062, '11:40 AM', '11:42 AM', 4),
        (903, 707, 724062, '12:06 PM', '12:08 PM', 5),
        (903, 708, 724062, '12:22 PM', '12:24 PM', 6),
        (903, 716, 724062, '12:37 PM', NULL, 7),

        -- down
        (903, 716, 724063, NULL, '02:07 PM', 1),
        (903, 708, 724063, '02:27 PM', '02:29 PM', 2),
        (903, 707, 724063, '02:42 PM', '02:44 PM', 3),
        (903, 717, 724063, '02:55 PM', '02:57 PM', 4),
        (903, 705, 724063, '03:12 PM', '03:14 PM', 5),
        (903, 714, 724063, '03:21 PM', '03:23 PM', 6),
        (903, 703, 724063, '03:37 PM', NULL, 7),

        --  TRAIN 8704
        -- up
        (903, 703, 724064, NULL, '05:07 PM', 1),
        (903, 714, 724064, '05:17 PM', '05:19 PM', 2),
        (903, 705, 724064, '05:32 PM', '05:34 PM', 3),
        (903, 717, 724064, '05:40 PM', '05:42 PM', 4),
        (903, 707, 724064, '06:05 PM', '06:07 PM', 5),
        (903, 708, 724064, '06:22 PM', '06:24 PM', 6),
        (903, 716, 724064, '06:37 PM', NULL, 7),

        -- down
        (903, 716, 724065, NULL, '08:07 PM', 1),
        (903, 708, 724065, '08:27 PM', '08:29 PM', 2),
        (903, 707, 724065, '08:42 PM', '08:44 PM', 3),
        (903, 717, 724065, '08:55 PM', '08:57 PM', 4),
        (903, 705, 724065, '09:12 PM', '09:14 PM', 5),
        (903, 714, 724065, '09:21 PM', '09:23 PM', 6),
        (903, 703, 724065, '09:37 PM', NULL, 7),

        -- up
        (903, 703, 724066, NULL, '10:07 PM', 1),
        (903, 714, 724066, '10:17 PM', '10:19 PM', 2),
        (903, 705, 724066, '10:32 PM', '10:34 PM', 3),
        (903, 717, 724066, '10:40 PM', '10:42 PM', 4),
        (903, 707, 724066, '11:05 PM', '11:07 PM', 5),
        (903, 708, 724066, '11:22 PM', '11:24 PM', 6),
        (903, 716, 724066, '11:37 PM', NULL, 7),

        -- down
        (903, 716, 724067, NULL, '12:07 AM', 1),
        (903, 708, 724067, '12:27 AM', '12:29 AM', 2),
        (903, 707, 724067, '12:42 AM', '12:44 AM', 3),
        (903, 717, 724067, '12:55 AM', '12:57 AM', 4),
        (903, 705, 724067, '01:12 AM', '01:14 AM', 5),
        (903, 714, 724067, '01:21 AM', '01:23 AM', 6),
        (903, 703, 724067, '01:37 AM', NULL, 7),

        -- TRAIN 8708
        -- down
        (903, 716, 724068, NULL, '06:07 AM', 1),
        (903, 708, 724068, '06:27 AM', '06:29 AM', 2),
        (903, 707, 724068, '06:42 AM', '06:44 AM', 3),
        (903, 717, 724068, '06:55 AM', '06:57 AM', 4),
        (903, 705, 724068, '07:12 AM', '07:14 AM', 5),
        (903, 714, 724068, '07:21 AM', '07:23 AM', 6),
        (903, 703, 724068, '07:37 AM', NULL, 7),

        -- up
        (903, 703, 724069, NULL, '08:07 AM', 1),
        (903, 714, 724069, '08:17 AM', '08:19 AM', 2),
        (903, 705, 724069, '08:32 AM', '08:34 AM', 3),
        (903, 717, 724069, '08:40 AM', '08:42 AM', 4),
        (903, 707, 724069, '09:05 AM', '09:07 AM', 5),
        (903, 708, 724069, '09:22 AM', '09:24 AM', 6),
        (903, 716, 724069, '09:37 AM', NULL, 7),

        -- TRAIN 8721
        -- down
        (903, 716, 724070, NULL, '11:07 AM', 1),
        (903, 708, 724070, '11:27 AM', '11:29 AM', 2),
        (903, 707, 724070, '11:42 AM', '11:44 AM', 3),
        (903, 717, 724070, '11:55 AM', '11:57 AM', 4),
        (903, 705, 724070, '12:12 PM', '12:14 PM', 5),
        (903, 714, 724070, '12:21 PM', '12:23 PM', 6),
        (903, 703, 724070, '12:37 PM', NULL, 7),

        -- up
        (903, 703, 724071, NULL, '06:07 PM', 1),
        (903, 714, 724071, '06:17 PM', '06:19 PM', 2),
        (903, 705, 724071, '06:32 PM', '06:34 PM', 3),
        (903, 717, 724071, '06:40 PM', '06:42 PM', 4),
        (903, 707, 724071, '07:05 PM', '07:07 PM', 5),
        (903, 708, 724071, '07:22 PM', '07:24 PM', 6),
        (903, 716, 724071, '07:37 PM', NULL, 7),

        -- TRAIN 8712
        -- up
        (903, 703, 724072, NULL, '09:07 AM', 1),
        (903, 714, 724072, '09:17 AM', '09:19 AM', 2),
        (903, 705, 724072, '09:32 AM', '09:34 AM', 3),
        (903, 717, 724072, '09:40 AM', '09:42 AM', 4),
        (903, 707, 724072, '10:05 AM', '10:07 AM', 5),
        (903, 708, 724072, '10:22 AM', '10:24 AM', 6),
        (903, 716, 724072, '10:37 AM', NULL, 7),

        -- down 
        (903, 716, 724073, NULL, '06:07 PM', 1),
        (903, 708, 724073, '06:27 PM', '06:29 PM', 2),
        (903, 707, 724073, '06:42 PM', '06:44 PM', 3),
        (903, 717, 724073, '06:55 PM', '06:57 PM', 4),
        (903, 705, 724073, '07:12 PM', '07:14 PM', 5),
        (903, 714, 724073, '07:21 PM', '07:23 PM', 6),
        (903, 703, 724073, '07:37 PM', NULL, 7),

        -- down
        (903, 716, 724074, NULL, '09:07 AM', 1),
        (903, 708, 724074, '09:27 AM', '09:29 AM', 2),
        (903, 707, 724074, '09:42 AM', '09:44 AM', 3),
        (903, 717, 724074, '09:55 AM', '09:57 AM', 4),
        (903, 705, 724074, '10:12 AM', '10:14 AM', 5),
        (903, 714, 724074, '10:21 AM', '10:23 AM', 6),
        (903, 703, 724074, '10:37 AM', NULL, 7),

        -- up
        (903, 703, 724075, NULL, '02:07 PM', 1),
        (903, 714, 724075, '02:17 PM', '02:19 PM', 2),
        (903, 705, 724075, '02:32 PM', '02:34 PM', 3),
        (903, 717, 724075, '02:40 PM', '02:42 PM', 4),
        (903, 707, 724075, '03:05 PM', '03:07 PM', 5),
        (903, 708, 724075, '03:22 PM', '03:24 PM', 6),
        (903, 716, 724075, '03:37 PM', NULL, 7),

        -- down 
        (903, 716, 724076, NULL, '05:07 PM', 1),
        (903, 708, 724076, '05:27 PM', '05:29 PM', 2),
        (903, 707, 724076, '05:42 PM', '05:44 PM', 3),
        (903, 717, 724076, '05:55 PM', '05:57 PM', 4),
        (903, 705, 724076, '06:12 PM', '06:14 PM', 5),
        (903, 714, 724076, '06:21 PM', '06:23 PM', 6),
        (903, 703, 724076, '06:37 PM', NULL, 7),

        -- up
        (903, 703, 724077, NULL, '12:07 AM', 1),
        (903, 714, 724077, '12:17 AM', '12:19 AM', 2),
        (903, 705, 724077, '12:32 AM', '12:34 AM', 3),
        (903, 717, 724077, '12:40 AM', '12:42 AM', 4),
        (903, 707, 724077, '01:05 AM', '01:07 AM', 5),
        (903, 708, 724077, '01:22 AM', '01:24 AM', 6),
        (903, 716, 724077, '01:37 AM', NULL, 7),

        -- TRAIN 8720
        -- up
        (903, 703, 724078, NULL, '08:07 PM', 1),
        (903, 714, 724078, '08:17 PM', '08:19 PM', 2),
        (903, 705, 724078, '08:32 PM', '08:34 PM', 3),
        (903, 717, 724078, '08:40 PM', '08:42 PM', 4),
        (903, 707, 724078, '09:05 PM', '09:07 PM', 5),
        (903, 708, 724078, '09:22 PM', '09:24 PM', 6),
        (903, 716, 724078, '09:37 PM', NULL, 7),

        -- down 
        (903, 716, 724079, NULL, '10:07 PM', 1),
        (903, 708, 724079, '10:27 PM', '10:29 PM', 2),
        (903, 707, 724079, '10:42 PM', '10:44 PM', 3),
        (903, 717, 724079, '10:55 PM', '10:57 PM', 4),
        (903, 705, 724079, '11:12 PM', '11:14 PM', 5),
        (903, 714, 724079, '11:21 PM', '11:23 PM', 6),
        (903, 703, 724079, '11:37 PM', NULL, 7);

    --------------------------------------------------------------------------------------------------------------------------------

    -- ROUTE SCHEDULE for ORANGE LINE
    INSERT INTO [dbo].[ROUTE_SCHEDULE_PER_STATION] (ROUTES_ID, STATION_ID, SCHEDULE_ID, ARRIVAL_TIME, DEPARTURE_TIME, STATION_ORDER)VALUES
        -- up
        (904, 710, 724080, NULL, '06:08 AM', 1),
        (904, 711, 724080, '06:33 AM', '06:35 AM', 2),
        (904, 706, 724080, '06:53 AM', '06:55 AM', 3),
        (904, 707, 724080, '07:04 AM', '07:06 AM', 4),
        (904, 709, 724080, '07:28 AM', NULL, 5),

        -- down
        (904, 709, 724081, NULL, '08:08 AM', 1),
        (904, 707, 724081, '08:30 AM', '08:32 AM', 2),
        (904, 706, 724081, '08:41 AM', '08:43 AM', 3),
        (904, 711, 724081, '09:00 AM', '09:01 AM', 4),
        (904, 710, 724081, '09:28 AM', NULL, 5),

        -- up
        (904, 710, 724082, NULL, '09:08 AM', 1),
        (904, 711, 724082, '09:33 AM', '09:35 AM', 2),
        (904, 706, 724082, '09:53 AM', '09:55 AM', 3),
        (904, 707, 724082, '10:04 AM', '10:06 AM', 4),
        (904, 709, 724082, '10:28 AM', NULL, 5),

        -- down
        (904, 709, 724083, NULL, '12:08 PM', 1),
        (904, 707, 724083, '12:30 PM', '12:32 PM', 2),
        (904, 706, 724083, '12:41 PM', '12:43 PM', 3),
        (904, 711, 724083, '01:00 PM', '01:01 PM', 4),
        (904, 710, 724083, '01:28 PM', NULL, 5),

        -- down
        (904, 709, 724084, NULL, '06:08 AM', 1),
        (904, 707, 724084, '06:30 AM', '06:32 AM', 2),
        (904, 706, 724084, '06:41 AM', '06:43 AM', 3),
        (904, 711, 724084, '07:00 AM', '07:01 AM', 4),
        (904, 710, 724084, '07:28 AM', NULL, 5),

        -- up
        (904, 710, 724085, NULL, '08:08 AM', 1),
        (904, 711, 724085, '08:33 AM', '08:35 AM', 2),
        (904, 706, 724085, '08:53 AM', '08:55 AM', 3),
        (904, 707, 724085, '09:04 AM', '09:06 AM', 4),
        (904, 709, 724085, '09:28 AM', NULL, 5),

        -- up
        (904, 710, 724086, NULL, '03:08 PM', 1),
        (904, 711, 724086, '03:33 PM', '03:35 PM', 2),
        (904, 706, 724086, '03:53 PM', '03:55 PM', 3),
        (904, 707, 724086, '04:04 PM', '04:06 PM', 4),
        (904, 709, 724086, '04:28 PM', NULL, 5),

        -- down
        (904, 709, 724087, NULL, '06:08 PM', 1),
        (904, 707, 724087, '06:30 PM', '06:32 PM', 2),
        (904, 706, 724087, '06:41 PM', '06:43 PM', 3),
        (904, 711, 724087, '07:00 PM', '07:01 PM', 4),
        (904, 710, 724087, '07:28 PM', NULL, 5),

        -- down
        (904, 709, 724088, NULL, '09:08 AM', 1),
        (904, 707, 724088, '09:30 AM', '09:32 AM', 2),
        (904, 706, 724088, '09:41 AM', '09:43 AM', 3),
        (904, 711, 724088, '10:00 AM', '10:01 AM', 4),
        (904, 710, 724088, '10:28 AM', NULL, 5),

        -- up
        (904, 710, 724089, NULL, '12:08 PM', 1),
        (904, 711, 724089, '12:33 PM', '12:35 PM', 2),
        (904, 706, 724089, '12:53 PM', '12:55 PM', 3),
        (904, 707, 724089, '01:04 PM', '01:06 PM', 4),
        (904, 709, 724089, '01:28 PM', NULL, 5),

        -- up
        (904, 710, 724090, NULL, '09:08 PM', 1),
        (904, 711, 724090, '09:33 PM', '09:35 PM', 2),
        (904, 706, 724090, '09:53 PM', '09:55 PM', 3),
        (904, 707, 724090, '10:04 PM', '10:06 PM', 4),
        (904, 709, 724090, '10:28 PM', NULL, 5),

        -- down
        (904, 709, 724091, NULL, '12:08 AM', 1),
        (904, 707, 724091, '12:30 AM', '12:32 AM', 2),
        (904, 706, 724091, '12:41 AM', '12:43 AM', 3),
        (904, 711, 724091, '01:00 AM', '01:01 AM', 4),
        (904, 710, 724091, '01:28 AM', NULL, 5),

        -- down
        (904, 709, 724092, NULL, '03:08 PM', 1),
        (904, 707, 724092, '03:30 PM', '03:32 PM', 2),
        (904, 706, 724092, '03:41 PM', '03:43 PM', 3),
        (904, 711, 724092, '04:00 PM', '04:01 PM', 4),
        (904, 710, 724092, '04:28 PM', NULL, 5),

        -- up
        (904, 710, 724093, NULL, '06:08 PM', 1),
        (904, 711, 724093, '06:33 PM', '06:35 PM', 2),
        (904, 706, 724093, '06:53 PM', '06:55 PM', 3),
        (904, 707, 724093, '07:04 PM', '07:06 PM', 4),
        (904, 709, 724093, '07:28 PM', NULL, 5),

        -- down
        (904, 709, 724094, NULL, '09:08 PM', 1),
        (904, 707, 724094, '09:30 PM', '09:32 PM', 2),
        (904, 706, 724094, '09:41 PM', '09:43 PM', 3),
        (904, 711, 724094, '10:00 PM', '10:01 PM', 4),
        (904, 710, 724094, '10:28 PM', NULL, 5),

        -- up
        (904, 710, 724095, NULL, '12:08 AM', 1),
        (904, 711, 724095, '12:33 AM', '12:35 AM', 2),
        (904, 706, 724095, '12:53 AM', '12:55 AM', 3),
        (904, 707, 724095, '01:04 AM', '01:06 AM', 4),
        (904, 709, 724095, '01:28 AM', NULL, 5);

--------------------------------------------------------------------------------------------------------------------------------

-- WEEKENDS
    -- ROUTE SCHEDULE for GREEN LINE B

    INSERT INTO [dbo].[ROUTE_SCHEDULE_PER_STATION] (ROUTES_ID, STATION_ID, SCHEDULE_ID, ARRIVAL_TIME, DEPARTURE_TIME, STATION_ORDER)VALUES

        -- TRAIN 8701
        -- up
        (900, 700, 724096, NULL, '06:00 AM', 1),
        (900, 712, 724096, '06:10 AM', '06:12 AM', 2),
        (900, 704, 724096, '06:25 AM', '06:27 AM', 3),
        (900, 705, 724096, '06:33 AM', '06:35 AM', 4),
        (900, 706, 724096, '06:58 AM', '07:00 AM', 5),
        (900, 707, 724096, '07:15 AM', '07:17 AM', 6),
        (900, 708, 724096, '07:30 AM', NULL, 7),

        -- down
        (900, 708, 724097, NULL, '08:00 AM', 1),
        (900, 707, 724097, '08:20 AM', '08:22 AM', 2),
        (900, 706, 724097, '08:35 AM', '08:37 AM', 3),
        (900, 705, 724097, '08:48 AM', '08:50 AM', 4),
        (900, 704, 724097, '09:05 AM', '09:07 AM', 5),
        (900, 712, 724097, '09:14 AM', '09:16 AM', 6),
        (900, 700, 724097, '09:30 AM', NULL, 7),

        -- up
        (900, 700, 724098, NULL, '11:00 AM', 1),
        (900, 712, 724098, '11:10 AM', '11:12 AM', 2),
        (900, 704, 724098, '11:25 AM', '11:27 AM', 3),
        (900, 705, 724098, '11:33 AM', '11:35 AM', 4),
        (900, 706, 724098, '11:59 AM', '12:01 PM', 5),
        (900, 707, 724098, '12:15 PM', '12:17 PM', 6),
        (900, 708, 724098, '12:30 PM', NULL, 7),

        -- down
        (900, 708, 724099, NULL, '02:00 PM', 1),
        (900, 707, 724099, '02:20 PM', '02:22 PM', 2),
        (900, 706, 724099, '02:35 PM', '02:37 PM', 3),
        (900, 705, 724099, '02:48 PM', '02:50 PM', 4),
        (900, 704, 724099, '03:05 PM', '03:07 PM', 5),
        (900, 712, 724099, '03:14 PM', '03:16 PM', 6),
        (900, 700, 724099, '03:30 PM', NULL, 7),

        -- TRAIN 8720
        -- down

        (900, 708, 724100, NULL, '06:00 AM', 1),
        (900, 707, 724100, '06:20 AM', '06:22 AM', 2),
        (900, 706, 724100, '06:35 AM', '06:37 AM', 3),
        (900, 705, 724100, '06:48 AM', '06:50 AM', 4),
        (900, 704, 724100, '07:05 AM', '07:07 AM', 5),
        (900, 712, 724100, '07:14 AM', '07:16 AM', 6),
        (900, 700, 724100, '07:30 AM', NULL, 7),

        -- up
        (900, 700, 724101, NULL, '08:00 AM', 1),
        (900, 712, 724101, '08:10 AM', '08:12 AM', 2),
        (900, 704, 724101, '08:25 AM', '08:27 AM', 3),
        (900, 705, 724101, '08:33 AM', '08:35 AM', 4),
        (900, 706, 724101, '08:58 AM', '09:00 AM', 5),
        (900, 707, 724101, '09:15 AM', '09:17 AM', 6),
        (900, 708, 724101, '09:30 AM', NULL, 7),

        -- down
        (900, 708, 724102, NULL, '11:00 AM', 1),
        (900, 707, 724102, '11:20 AM', '11:22 AM', 2),
        (900, 706, 724102, '11:35 AM', '11:37 AM', 3),
        (900, 705, 724102, '11:48 AM', '11:50 AM', 4),
        (900, 704, 724102, '12:05 PM', '12:07 PM', 5),
        (900, 712, 724102, '12:14 PM', '12:16 PM', 6),
        (900, 700, 724102, '12:30 PM', NULL, 7),

        -- up
        (900, 700, 724103, NULL, '02:00 PM', 1),
        (900, 712, 724103, '02:10 PM', '02:12 PM', 2),
        (900, 704, 724103, '02:25 PM', '02:27 PM', 3),
        (900, 705, 724103, '02:33 PM', '02:35 PM', 4),
        (900, 706, 724103, '02:58 PM', '03:00 PM', 5),
        (900, 707, 724103, '03:15 PM', '03:17 PM', 6),
        (900, 708, 724103, '03:30 PM', NULL, 7),


        --  TRAIN 8707
        -- up
        (900, 700, 724104, NULL, '05:00 PM', 1),
        (900, 712, 724104, '05:10 PM', '05:12 PM', 2),
        (900, 704, 724104, '05:25 PM', '05:27 PM', 3),
        (900, 705, 724104, '05:33 PM', '05:35 PM', 4),
        (900, 706, 724104, '05:58 PM', '06:00 PM', 5),
        (900, 707, 724104, '06:15 PM', '06:17 PM', 6),
        (900, 708, 724104, '06:30 PM', NULL, 7),

        -- down
        (900, 708, 724105, NULL, '08:00 PM', 1),
        (900, 707, 724105, '08:20 PM', '08:22 PM', 2),
        (900, 706, 724105, '08:35 PM', '08:37 PM', 3),
        (900, 705, 724105, '08:48 PM', '08:50 PM', 4),
        (900, 704, 724105, '09:05 PM', '09:07 PM', 5),
        (900, 712, 724105, '09:14 PM', '09:16 PM', 6),
        (900, 700, 724105, '09:30 PM', NULL, 7),

        --  TRAIN 8711
        -- up
        (900, 700, 724106, NULL, '10:00 PM', 1),
        (900, 712, 724106, '10:10 PM', '10:12 PM', 2),
        (900, 704, 724106, '10:25 PM', '10:27 PM', 3),
        (900, 705, 724106, '10:33 PM', '10:35 PM', 4),
        (900, 706, 724106, '10:58 PM', '11:00 PM', 5),
        (900, 707, 724106, '11:15 PM', '11:17 PM', 6),
        (900, 708, 724106, '11:30 PM', NULL, 7),

        -- down
        (900, 708, 724107, NULL, '12:00 AM', 1),
        (900, 707, 724107, '12:20 AM', '12:22 AM', 2),
        (900, 706, 724107, '12:35 AM', '12:37 AM', 3),
        (900, 705, 724107, '12:48 AM', '12:50 AM', 4),
        (900, 704, 724107, '01:05 AM', '01:07 AM', 5),
        (900, 712, 724107, '01:14 AM', '01:16 AM', 6),
        (900, 700, 724107, '01:30 AM', NULL, 7);

    --------------------------------------------------------------------------------------------------------------------------------

    -- ROUTE SCHEDULE for GREEN LINE C

    INSERT INTO [dbo].[ROUTE_SCHEDULE_PER_STATION] (ROUTES_ID, STATION_ID, SCHEDULE_ID, ARRIVAL_TIME, DEPARTURE_TIME, STATION_ORDER)VALUES

        -- TRAIN 8703
        -- up
        (901, 701, 724108, NULL, '06:00 AM', 1),
        (901, 715, 724108, '06:10 AM', '06:12 AM', 2),
        (901, 704, 724108, '06:25 AM', '06:27 AM', 3),
        (901, 705, 724108, '06:33 AM', '06:35 AM', 4),
        (901, 717, 724108, '06:58 AM', '07:00 AM', 5),
        (901, 706, 724108, '07:15 AM', '07:17 AM', 6),
        (901, 707, 724108, '07:30 AM', NULL, 7),

        -- down
        (901, 707, 724109, NULL, '08:00 AM', 1),
        (901, 706, 724109, '08:20 AM', '08:22 AM', 2),
        (901, 717, 724109, '08:35 AM', '08:37 AM', 3),
        (901, 705, 724109, '08:48 AM', '08:50 AM', 4),
        (901, 704, 724109, '09:05 AM', '09:07 AM', 5),
        (901, 715, 724109, '09:14 AM', '09:16 AM', 6),
        (901, 701, 724109, '09:30 AM', NULL, 7),

        -- up
        (901, 701, 724110, NULL, '11:00 AM', 1),
        (901, 715, 724110, '11:10 AM', '11:12 AM', 2),
        (901, 704, 724110, '11:25 AM', '11:27 AM', 3),
        (901, 705, 724110, '11:33 AM', '11:35 AM', 4),
        (901, 717, 724110, '11:59 AM', '12:01 PM', 5),
        (901, 706, 724110, '12:15 PM', '12:17 PM', 6),
        (901, 707, 724110, '12:30 PM', NULL, 7),

        -- down
        (901, 707, 724111, NULL, '02:00 PM', 1),
        (901, 706, 724111, '02:20 PM', '02:22 PM', 2),
        (901, 717, 724111, '02:35 PM', '02:37 PM', 3),
        (901, 705, 724111, '02:48 PM', '02:50 PM', 4),
        (901, 704, 724111, '03:05 PM', '03:07 PM', 5),
        (901, 715, 724111, '03:14 PM', '03:16 PM', 6),
        (901, 701, 724111, '03:30 PM', NULL, 7),

        -- TRAIN 8721
        -- down

        (901, 707, 724112, NULL, '06:00 AM', 1),
        (901, 706, 724112, '06:20 AM', '06:22 AM', 2),
        (901, 717, 724112, '06:35 AM', '06:37 AM', 3),
        (901, 705, 724112, '06:48 AM', '06:50 AM', 4),
        (901, 704, 724112, '07:05 AM', '07:07 AM', 5),
        (901, 715, 724112, '07:14 AM', '07:16 AM', 6),
        (901, 701, 724112, '07:30 AM', NULL, 7),

        -- up
        (901, 701, 724113, NULL, '08:00 AM', 1),
        (901, 715, 724113, '08:10 AM', '08:12 AM', 2),
        (901, 704, 724113, '08:25 AM', '08:27 AM', 3),
        (901, 705, 724113, '08:33 AM', '08:35 AM', 4),
        (901, 717, 724113, '08:58 AM', '09:00 AM', 5),
        (901, 706, 724113, '09:15 AM', '09:17 AM', 6),
        (901, 707, 724113, '09:30 AM', NULL, 7),

        -- down
        (901, 707, 724114, NULL, '11:00 AM', 1),
        (901, 706, 724114, '11:20 AM', '11:22 AM', 2),
        (901, 717, 724114, '11:35 AM', '11:37 AM', 3),
        (901, 705, 724114, '11:48 AM', '11:50 AM', 4),
        (901, 704, 724114, '12:05 PM', '12:07 PM', 5),
        (901, 715, 724114, '12:14 PM', '12:16 PM', 6),
        (901, 701, 724114, '12:30 PM', NULL, 7),

        -- up
        (901, 701, 724115, NULL, '02:00 PM', 1),
        (901, 715, 724115, '02:10 PM', '02:12 PM', 2),
        (901, 704, 724115, '02:25 PM', '02:27 PM', 3),
        (901, 705, 724115, '02:33 PM', '02:35 PM', 4),
        (901, 717, 724115, '02:58 PM', '03:00 PM', 5),
        (901, 706, 724115, '03:15 PM', '03:17 PM', 6),
        (901, 707, 724115, '03:30 PM', NULL, 7),


        --  TRAIN 8700
        -- up
        (901, 701, 724116, NULL, '05:00 PM', 1),
        (901, 715, 724116, '05:10 PM', '05:12 PM', 2),
        (901, 704, 724116, '05:25 PM', '05:27 PM', 3),
        (901, 705, 724116, '05:33 PM', '05:35 PM', 4),
        (901, 717, 724116, '05:58 PM', '06:00 PM', 5),
        (901, 706, 724116, '06:15 PM', '06:17 PM', 6),
        (901, 707, 724116, '06:30 PM', NULL, 7),

        -- down
        (901, 707, 724117, NULL, '08:00 PM', 1),
        (901, 706, 724117, '08:20 PM', '08:22 PM', 2),
        (901, 717, 724117, '08:35 PM', '08:37 PM', 3),
        (901, 705, 724117, '08:48 PM', '08:50 PM', 4),
        (901, 704, 724117, '09:05 PM', '09:07 PM', 5),
        (901, 715, 724117, '09:14 PM', '09:16 PM', 6),
        (901, 701, 724117, '09:30 PM', NULL, 7),

        --  TRAIN 8710
        -- up
        (901, 701, 724118, NULL, '10:00 PM', 1),
        (901, 715, 724118, '10:10 PM', '10:12 PM', 2),
        (901, 704, 724118, '10:25 PM', '10:27 PM', 3),
        (901, 705, 724118, '10:33 PM', '10:35 PM', 4),
        (901, 717, 724118, '10:58 PM', '11:00 PM', 5),
        (901, 706, 724118, '11:15 PM', '11:17 PM', 6),
        (901, 707, 724118, '11:30 PM', NULL, 7),

        -- down
        (901, 707, 724119, NULL, '12:00 AM', 1),
        (901, 706, 724119, '12:20 AM', '12:22 AM', 2),
        (901, 717, 724119, '12:35 AM', '12:37 AM', 3),
        (901, 705, 724119, '12:48 AM', '12:50 AM', 4),
        (901, 704, 724119, '01:05 AM', '01:07 AM', 5),
        (901, 715, 724119, '01:14 AM', '01:16 AM', 6),
        (901, 701, 724119, '01:30 AM', NULL, 7);

    --------------------------------------------------------------------------------------------------------------------------------

    -- ROUTE SCHEDULE for GREEN LINE D

    INSERT INTO [dbo].[ROUTE_SCHEDULE_PER_STATION] (ROUTES_ID, STATION_ID, SCHEDULE_ID, ARRIVAL_TIME, DEPARTURE_TIME, STATION_ORDER)VALUES

        -- TRAIN 8713
        -- up
        (902, 702, 724120, NULL, '06:00 AM', 1),
        (902, 713, 724120, '06:10 AM', '06:12 AM', 2),
        (902, 704, 724120, '06:25 AM', '06:27 AM', 3),
        (902, 705, 724120, '06:33 AM', '06:35 AM', 4),
        (902, 717, 724120, '06:58 AM', '07:00 AM', 5),
        (902, 706, 724120, '07:15 AM', '07:17 AM', 6),
        (902, 707, 724120, '07:30 AM', NULL, 7),

        -- down
        (902, 707, 724121, NULL, '08:00 AM', 1),
        (902, 706, 724121, '08:20 AM', '08:22 AM', 2),
        (902, 717, 724121, '08:35 AM', '08:37 AM', 3),
        (902, 705, 724121, '08:48 AM', '08:50 AM', 4),
        (902, 704, 724121, '09:05 AM', '09:07 AM', 5),
        (902, 713, 724121, '09:14 AM', '09:16 AM', 6),
        (902, 702, 724121, '09:30 AM', NULL, 7),

        -- up
        (902, 702, 724122, NULL, '11:00 AM', 1),
        (902, 713, 724122, '11:10 AM', '11:12 AM', 2),
        (902, 704, 724122, '11:25 AM', '11:27 AM', 3),
        (902, 705, 724122, '11:33 AM', '11:35 AM', 4),
        (902, 717, 724122, '11:59 AM', '12:01 PM', 5),
        (902, 706, 724122, '12:15 PM', '12:17 PM', 6),
        (902, 707, 724122, '12:30 PM', NULL, 7),

        -- down
        (902, 707, 724123, NULL, '02:00 PM', 1),
        (902, 706, 724123, '02:20 PM', '02:22 PM', 2),
        (902, 717, 724123, '02:35 PM', '02:37 PM', 3),
        (902, 705, 724123, '02:48 PM', '02:50 PM', 4),
        (902, 704, 724123, '03:05 PM', '03:07 PM', 5),
        (902, 713, 724123, '03:14 PM', '03:16 PM', 6),
        (902, 702, 724123, '03:30 PM', NULL, 7),

        -- TRAIN 8723
        -- down

        (902, 707, 724124, NULL, '06:00 AM', 1),
        (902, 706, 724124, '06:20 AM', '06:22 AM', 2),
        (902, 717, 724124, '06:35 AM', '06:37 AM', 3),
        (902, 705, 724124, '06:48 AM', '06:50 AM', 4),
        (902, 704, 724124, '07:05 AM', '07:07 AM', 5),
        (902, 713, 724124, '07:14 AM', '07:16 AM', 6),
        (902, 702, 724124, '07:30 AM', NULL, 7),

        -- up
        (902, 702, 724125, NULL, '08:00 AM', 1),
        (902, 713, 724125, '08:10 AM', '08:12 AM', 2),
        (902, 704, 724125, '08:25 AM', '08:27 AM', 3),
        (902, 705, 724125, '08:33 AM', '08:35 AM', 4),
        (902, 717, 724125, '08:58 AM', '09:00 AM', 5),
        (902, 706, 724125, '09:15 AM', '09:17 AM', 6),
        (902, 707, 724125, '09:30 AM', NULL, 7),

        -- down
        (902, 707, 724126, NULL, '11:00 AM', 1),
        (902, 706, 724126, '11:20 AM', '11:22 AM', 2),
        (902, 717, 724126, '11:35 AM', '11:37 AM', 3),
        (902, 705, 724126, '11:48 AM', '11:50 AM', 4),
        (902, 704, 724126, '12:05 PM', '12:07 PM', 5),
        (902, 713, 724126, '12:14 PM', '12:16 PM', 6),
        (902, 702, 724126, '12:30 PM', NULL, 7),

        -- up
        (902, 702, 724127, NULL, '02:00 PM', 1),
        (902, 713, 724127, '02:10 PM', '02:12 PM', 2),
        (902, 704, 724127, '02:25 PM', '02:27 PM', 3),
        (902, 705, 724127, '02:33 PM', '02:35 PM', 4),
        (902, 717, 724127, '02:58 PM', '03:00 PM', 5),
        (902, 706, 724127, '03:15 PM', '03:17 PM', 6),
        (902, 707, 724127, '03:30 PM', NULL, 7),


        --  TRAIN 8722
        -- up
        (902, 702, 724128, NULL, '05:00 PM', 1),
        (902, 713, 724128, '05:10 PM', '05:12 PM', 2),
        (902, 704, 724128, '05:25 PM', '05:27 PM', 3),
        (902, 705, 724128, '05:33 PM', '05:35 PM', 4),
        (902, 717, 724128, '05:58 PM', '06:00 PM', 5),
        (902, 706, 724128, '06:15 PM', '06:17 PM', 6),
        (902, 707, 724128, '06:30 PM', NULL, 7),

        -- down
        (902, 707, 724129, NULL, '08:00 PM', 1),
        (902, 706, 724129, '08:20 PM', '08:22 PM', 2),
        (902, 717, 724129, '08:35 PM', '08:37 PM', 3),
        (902, 705, 724129, '08:48 PM', '08:50 PM', 4),
        (902, 704, 724129, '09:05 PM', '09:07 PM', 5),
        (902, 713, 724129, '09:14 PM', '09:16 PM', 6),
        (902, 702, 724129, '09:30 PM', NULL, 7),

        --  TRAIN 8706
        -- up
        (902, 702, 724130, NULL, '10:00 PM', 1),
        (902, 713, 724130, '10:10 PM', '10:12 PM', 2),
        (902, 704, 724130, '10:25 PM', '10:27 PM', 3),
        (902, 705, 724130, '10:33 PM', '10:35 PM', 4),
        (902, 717, 724130, '10:58 PM', '11:00 PM', 5),
        (902, 706, 724130, '11:15 PM', '11:17 PM', 6),
        (902, 707, 724130, '11:30 PM', NULL, 7),

        -- down
        (902, 707, 724131, NULL, '12:00 AM', 1),
        (902, 706, 724131, '12:20 AM', '12:22 AM', 2),
        (902, 717, 724131, '12:35 AM', '12:37 AM', 3),
        (902, 705, 724131, '12:48 AM', '12:50 AM', 4),
        (902, 704, 724131, '01:05 AM', '01:07 AM', 5),
        (902, 713, 724131, '01:14 AM', '01:16 AM', 6),
        (902, 702, 724131, '01:30 AM', NULL, 7);

    --------------------------------------------------------------------------------------------------------------------------------

    -- ROUTE SCHEDULE for GREEN LINE E

    INSERT INTO [dbo].[ROUTE_SCHEDULE_PER_STATION] (ROUTES_ID, STATION_ID, SCHEDULE_ID, ARRIVAL_TIME, DEPARTURE_TIME, STATION_ORDER)VALUES

        -- TRAIN 8719
        -- up
        (903, 703, 724132, NULL, '06:00 AM', 1),
        (903, 714, 724132, '06:10 AM', '06:12 AM', 2),
        (903, 705, 724132, '06:25 AM', '06:27 AM', 3),
        (903, 717, 724132, '06:33 AM', '06:35 AM', 4),
        (903, 707, 724132, '06:58 AM', '07:00 AM', 5),
        (903, 708, 724132, '07:15 AM', '07:17 AM', 6),
        (903, 716, 724132, '07:30 AM', NULL, 7),

        -- down
        (903, 716, 724133, NULL, '08:00 AM', 1),
        (903, 708, 724133, '08:20 AM', '08:22 AM', 2),
        (903, 707, 724133, '08:35 AM', '08:37 AM', 3),
        (903, 717, 724133, '08:48 AM', '08:50 AM', 4),
        (903, 705, 724133, '09:05 AM', '09:07 AM', 5),
        (903, 714, 724133, '09:14 AM', '09:16 AM', 6),
        (903, 703, 724133, '09:30 AM', NULL, 7),

        -- up
        (903, 703, 724134, NULL, '11:00 AM', 1),
        (903, 714, 724134, '11:10 AM', '11:12 AM', 2),
        (903, 705, 724134, '11:25 AM', '11:27 AM', 3),
        (903, 717, 724134, '11:33 AM', '11:35 AM', 4),
        (903, 707, 724134, '11:59 AM', '12:01 PM', 5),
        (903, 708, 724134, '12:15 PM', '12:17 PM', 6),
        (903, 716, 724134, '12:30 PM', NULL, 7),

        -- down
        (903, 716, 724135, NULL, '02:00 PM', 1),
        (903, 708, 724135, '02:20 PM', '02:22 PM', 2),
        (903, 707, 724135, '02:35 PM', '02:37 PM', 3),
        (903, 717, 724135, '02:48 PM', '02:50 PM', 4),
        (903, 705, 724135, '03:05 PM', '03:07 PM', 5),
        (903, 714, 724135, '03:14 PM', '03:16 PM', 6),
        (903, 703, 724135, '03:30 PM', NULL, 7),

        -- TRAIN 8714
        -- down

        (903, 716, 724136, NULL, '06:00 AM', 1),
        (903, 708, 724136, '06:20 AM', '06:22 AM', 2),
        (903, 707, 724136, '06:35 AM', '06:37 AM', 3),
        (903, 717, 724136, '06:48 AM', '06:50 AM', 4),
        (903, 705, 724136, '07:05 AM', '07:07 AM', 5),
        (903, 714, 724136, '07:14 AM', '07:16 AM', 6),
        (903, 703, 724136, '07:30 AM', NULL, 7),

        -- up
        (903, 703, 724137, NULL, '08:00 AM', 1),
        (903, 714, 724137, '08:10 AM', '08:12 AM', 2),
        (903, 705, 724137, '08:25 AM', '08:27 AM', 3),
        (903, 717, 724137, '08:33 AM', '08:35 AM', 4),
        (903, 707, 724137, '08:58 AM', '09:00 AM', 5),
        (903, 708, 724137, '09:15 AM', '09:17 AM', 6),
        (903, 716, 724137, '09:30 AM', NULL, 7),

        -- down
        (903, 716, 724138, NULL, '11:00 AM', 1),
        (903, 708, 724138, '11:20 AM', '11:22 AM', 2),
        (903, 707, 724138, '11:35 AM', '11:37 AM', 3),
        (903, 717, 724138, '11:48 AM', '11:50 AM', 4),
        (903, 705, 724138, '12:05 PM', '12:07 PM', 5),
        (903, 714, 724138, '12:14 PM', '12:16 PM', 6),
        (903, 703, 724138, '12:30 PM', NULL, 7),

        -- up
        (903, 703, 724139, NULL, '02:00 PM', 1),
        (903, 714, 724139, '02:10 PM', '02:12 PM', 2),
        (903, 705, 724139, '02:25 PM', '02:27 PM', 3),
        (903, 717, 724139, '02:33 PM', '02:35 PM', 4),
        (903, 707, 724139, '02:58 PM', '03:00 PM', 5),
        (903, 708, 724139, '03:15 PM', '03:17 PM', 6),
        (903, 716, 724139, '03:30 PM', NULL, 7),


        --  TRAIN 8702
        -- up
        (903, 703, 724140, NULL, '05:00 PM', 1),
        (903, 714, 724140, '05:10 PM', '05:12 PM', 2),
        (903, 705, 724140, '05:25 PM', '05:27 PM', 3),
        (903, 717, 724140, '05:33 PM', '05:35 PM', 4),
        (903, 707, 724140, '05:58 PM', '06:00 PM', 5),
        (903, 708, 724140, '06:15 PM', '06:17 PM', 6),
        (903, 716, 724140, '06:30 PM', NULL, 7),

        -- down
        (903, 716, 724141, NULL, '08:00 PM', 1),
        (903, 708, 724141, '08:20 PM', '08:22 PM', 2),
        (903, 707, 724141, '08:35 PM', '08:37 PM', 3),
        (903, 717, 724141, '08:48 PM', '08:50 PM', 4),
        (903, 705, 724141, '09:05 PM', '09:07 PM', 5),
        (903, 714, 724141, '09:14 PM', '09:16 PM', 6),
        (903, 703, 724141, '09:30 PM', NULL, 7),

        --  TRAIN 8708
        -- up
        (903, 703, 724142, NULL, '10:00 PM', 1),
        (903, 714, 724142, '10:10 PM', '10:12 PM', 2),
        (903, 705, 724142, '10:25 PM', '10:27 PM', 3),
        (903, 717, 724142, '10:33 PM', '10:35 PM', 4),
        (903, 707, 724142, '10:58 PM', '11:00 PM', 5),
        (903, 708, 724142, '11:15 PM', '11:17 PM', 6),
        (903, 716, 724142, '11:30 PM', NULL, 7),

        -- down
        (903, 716, 724143, NULL, '12:00 AM', 1),
        (903, 708, 724143, '12:20 AM', '12:22 AM', 2),
        (903, 707, 724143, '12:35 AM', '12:37 AM', 3),
        (903, 717, 724143, '12:48 AM', '12:50 AM', 4),
        (903, 705, 724143, '01:05 AM', '01:07 AM', 5),
        (903, 714, 724143, '01:14 AM', '01:16 AM', 6),
        (903, 703, 724143, '01:30 AM', NULL, 7);

    --------------------------------------------------------------------------------------------------------------------------------

    -- ROUTE SCHEDULE for ORANGE LINE

    INSERT INTO [dbo].[ROUTE_SCHEDULE_PER_STATION] (ROUTES_ID, STATION_ID, SCHEDULE_ID, ARRIVAL_TIME, DEPARTURE_TIME, STATION_ORDER)VALUES
        -- up (8724, 100, 'Weekends'),
        (904, 710, 724144, NULL, '06:08 AM', 1),
        (904, 711, 724144, '06:33 AM', '06:35 AM', 2),
        (904, 706, 724144, '06:53 AM', '06:55 AM', 3),
        (904, 707, 724144, '07:04 AM', '07:06 AM', 4),
        (904, 709, 724144, '07:28 AM', NULL, 5),

        -- down (8724, 100, 'Weekends'),
        (904, 709, 724145, NULL, '10:08 AM', 1),
        (904, 707, 724145, '10:30 AM', '10:32 AM', 2),
        (904, 706, 724145, '10:41 AM', '10:43 AM', 3),
        (904, 711, 724145, '11:00 AM', '11:01 AM', 4),
        (904, 710, 724145, '11:28 AM', NULL, 5),

        -- up (8724, 102, 'Weekends'),
        (904, 710, 724146, NULL, '01:08 PM', 1),
        (904, 711, 724146, '01:33 PM', '01:35 PM', 2),
        (904, 706, 724146, '01:53 PM', '01:55 PM', 3),
        (904, 707, 724146, '02:04 PM', '02:06 PM', 4),
        (904, 709, 724146, '02:28 PM', NULL, 5),

        -- down (8724, 102, 'Weekends'),
        (904, 709, 724147, NULL, '04:08 PM', 1),
        (904, 707, 724147, '04:30 PM', '04:32 PM', 2),
        (904, 706, 724147, '04:41 PM', '04:43 PM', 3),
        (904, 711, 724147, '05:00 PM', '05:01 PM', 4),
        (904, 710, 724147, '05:28 PM', NULL, 5),

        -- down (8725, 177, 'Weekends'),
        (904, 709, 724148, NULL, '06:08 AM', 1),
        (904, 707, 724148, '06:33 AM', '06:35 AM', 2),
        (904, 706, 724148, '06:53 AM', '06:55 AM', 3),
        (904, 711, 724148, '07:04 AM', '07:06 AM', 4),
        (904, 710, 724148, '07:28 AM', NULL, 5),

        -- up (8725, 177, 'Weekends'),
        (904, 710, 724149, NULL, '10:08 AM', 1),
        (904, 711, 724149, '10:30 AM', '10:32 AM', 2),
        (904, 706, 724149, '10:41 AM', '10:43 AM', 3),
        (904, 707, 724149, '11:00 AM', '11:01 AM', 4),
        (904, 709, 724149, '11:28 AM', NULL, 5),

        -- down (8728, 177, 'Weekends'),
        (904, 709, 724150, NULL, '01:08 PM', 1),
        (904, 707, 724150, '01:33 PM', '01:35 PM', 2),
        (904, 706, 724150, '01:53 PM', '01:55 PM', 3),
        (904, 711, 724150, '02:04 PM', '02:06 PM', 4),
        (904, 710, 724150, '02:28 PM', NULL, 5),

        -- up (8728, 177, 'Weekends'),
        (904, 710, 724151, NULL, '04:08 PM', 1),
        (904, 711, 724151, '04:30 PM', '04:32 PM', 2),
        (904, 706, 724151, '04:41 PM', '04:43 PM', 3),
        (904, 707, 724151, '05:00 PM', '05:01 PM', 4),
        (904, 709, 724151, '05:28 PM', NULL, 5),

        -- up (8726, 100, 'Weekends'),
        (904, 710, 724152, NULL, '08:08 PM', 1),
        (904, 711, 724152, '08:33 PM', '08:35 PM', 2),
        (904, 706, 724152, '08:53 PM', '08:55 PM', 3),
        (904, 707, 724152, '09:04 PM', '09:06 PM', 4),
        (904, 709, 724152, '09:28 PM', NULL, 5),

        -- down (8726, 100, 'Weekends'),
        (904, 709, 724153, NULL, '12:08 AM', 1),
        (904, 707, 724153, '12:30 AM', '12:32 AM', 2),
        (904, 706, 724153, '12:41 AM', '12:43 AM', 3),
        (904, 711, 724153, '01:00 AM', '01:01 AM', 4),
        (904, 710, 724153, '01:28 AM', NULL, 5),

        -- down (8728, 177, 'Weekends'),
        (904, 709, 724154, NULL, '08:08 PM', 1),
        (904, 707, 724154, '08:33 PM', '08:35 PM', 2),
        (904, 706, 724154, '08:53 PM', '08:55 PM', 3),
        (904, 711, 724154, '09:04 PM', '09:06 PM', 4),
        (904, 710, 724154, '09:28 PM', NULL, 5),

        -- up (8728, 177, 'Weekends'),
        (904, 710, 724155, NULL, '12:08 AM', 1),
        (904, 711, 724155, '12:30 AM', '12:32 AM', 2),
        (904, 706, 724155, '12:41 AM', '12:43 AM', 3),
        (904, 707, 724155, '01:00 AM', '01:01 AM', 4),
        (904, 709, 724155, '01:28 AM', NULL, 5);

--------------------------------------------------------------------------------------------------------------------------------

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Insert Statements for COMPLAINTS table

INSERT INTO [dbo].[COMPLAINTS] (COMPLAINT_DESCRIPTION, COMPLAINT_TIMESTAMP, RIDER_ID) VALUES 
    ('Late Arrival', '2023-11-25 09:30:00', 100000),  
    ('Lost Item', '2023-11-24 14:45:00', 100001),
    ('Rude Behavior', '2023-11-23 18:20:00', 100002),
    ('Overcharging', '2023-11-22 12:10:00', 100003),
    ('Accident During Ride', '2023-11-21 08:55:00', 100004),
    ('Poor Vehicle Condition', '2023-11-20 17:30:00', 100005),
    ('Wrong Route Taken', '2023-11-19 21:15:00', 100006),
    ('Unprofessional Conduct', '2023-11-18 13:40:00', 100007),
    ('Harassment', '2023-11-17 10:25:00', 100008),
    ('Refusal to Pick Up', '2023-11-16 16:50:00', 100009),
    ('Unsafe Driving', '2023-11-15 19:05:00', 100010),
    ('Billing Issue', '2023-11-14 11:15:00', 100011),
    ('Inappropriate Language', '2023-11-13 15:30:00', 100012),
    ('Lost in Transit', '2023-11-12 22:40:00', 100013),
    ('Late Departure', '2023-11-11 07:50:00', 100014),
    ('Vehicle Breakdown', '2023-11-10 18:00:00', 100015),
    ('Cancellation Issues', '2023-11-09 14:00:00', 100016),
    ('Overcrowded Vehicle', '2023-11-08 09:30:00', 100017),
    ('Lost Change', '2023-11-07 11:45:00', 100018),
    ('Driver Absent', '2023-11-06 20:20:00', 100019),
    ('Billing Discrepancy', '2023-11-05 13:35:00', 100020),
    ('Injury During Ride', '2023-11-04 17:55:00', 100021),
    ('Denied Service', '2023-11-03 10:10:00', 100022),
    ('Unsanitary Vehicle', '2023-11-02 14:25:00', 100023),
    ('Failure to Stop', '2023-11-01 19:45:00', 100024),
    ('Lost and Found', '2023-10-31 08:30:00', 100025),
    ('Route Confusion', '2023-10-30 12:15:00', 100026),
    ('Driver Incompetence', '2023-10-29 16:40:00', 100027),
    ('Vehicle Smells', '2023-10-28 21:00:00', 100028),
    ('Fare Dispute', '2023-10-27 11:00:00', 100029),
    ('Inadequate Service', '2023-10-26 14:45:00', 100030);

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Insert statements for COMPLAINTS_RESPONSE table

INSERT INTO [dbo].[COMPLAINTS_RESPONSE] (COMPLAINT_ID, RESPONSE_TIMESTAMP, RESPONSE_DESCRIPTION, RESOLVED_BY) VALUES 
    (1, '2023-11-25 10:15:00', 'Investigating the delay issue', 131),   
    (2, '2023-11-24 15:30:00', 'Item found and returned to the rider', 132),
    (3, '2023-11-23 19:00:00', 'Looking into the reported behavior', 132),
    (4, '2023-11-22 13:30:00', 'Refund issued for overcharged amount', 131),
    (5, '2023-11-21 09:10:00', 'Accident report filed, investigating further', 132),
    (6, '2023-11-20 18:00:00', 'Vehicle maintenance scheduled', 131),
    (7, '2023-11-19 21:45:00', 'Driver warned for taking the wrong route', 132),
    (8, '2023-11-18 14:20:00', 'Resolved, disciplinary action taken', 131),
    (9, '2023-11-17 11:00:00', 'Investigating the reported harassment', 131),
    (10, '2023-11-16 17:30:00', 'Resolved, driver warned and retrained', 132),
    (11, '2023-11-15 20:00:00', 'Investigating the reported unsafe driving', 132),
    (12, '2023-11-14 12:20:00', 'Billing issue resolved, refund issued', 131),
    (13, '2023-11-13 16:45:00', 'Warning issued for inappropriate language', 132),
    (14, '2023-11-12 23:15:00', 'Item found and returned to the rider', 131),
    (15, '2023-11-11 08:45:00', 'Late departure due to traffic, no action required', 132),
    (16, '2023-11-10 18:30:00', 'Vehicle breakdown resolved, maintenance performed', 131),
    (17, '2023-11-09 14:45:00', 'Cancellation issues resolved, rider refunded', 132),
    (18, '2023-11-08 10:00:00', 'Overcrowded vehicle issue resolved', 131),
    (19, '2023-11-07 12:15:00', 'Lost change refunded to the rider', 132),
    (20, '2023-11-06 20:50:00', 'Driver reported absent, action taken', 131),
    (21, '2023-11-05 14:05:00', 'Billing discrepancy resolved, rider refunded', 132),
    (22, '2023-11-04 18:25:00', 'Investigating the reported injury during ride', 132),
    (23, '2023-11-03 11:40:00', 'Service denied in error, apology issued', 131),
    (24, '2023-11-02 15:55:00', 'Vehicle cleaned and sanitized', 132),
    (25, '2023-11-01 20:15:00', 'Driver warned for failure to stop', 131),
    (26, '2023-10-31 09:00:00', 'Lost and found item returned to the rider', 132),
    (27, '2023-10-30 12:45:00', 'Investigating the reported route confusion', 132),
    (28, '2023-10-29 17:10:00', 'Driver retrained for incompetence', 131),
    (29, '2023-10-28 21:30:00', 'Vehicle deodorized and cleaned', 132),
    (30, '2023-10-27 11:30:00', 'Fare dispute resolved, rider refunded', 131);


-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Insert for transaction
INSERT INTO [dbo].[TRANSACTION] ([TRANSACTION_TIMESTAMP], [TRANSACTION_TYPE], [CARD_ID], [STATION_ID]) VALUES 
    ('2023-11-15 08:30:00', 'Recharge', 227300000, 700),
    ('2023-11-16 12:45:00', 'Journey', 227300001, 701),
    ('2023-11-17 15:20:00', 'Journey', 227300002, 702),
    ('2023-11-18 09:30:00', 'Recharge', 227300003, 703),
    ('2023-11-19 14:15:00', 'Journey', 227300004, 704),
    ('2023-11-10 20:45:00', 'Journey', 227300005, 705),
    ('2023-11-11 11:30:00', 'Recharge', 227300006, 706),
    ('2023-11-12 17:20:00', 'Journey', 227300007, 707),
    ('2023-11-13 09:00:00', 'Journey', 227300008, 708),
    ('2023-11-14 14:45:00', 'Recharge', 227300009, 709),
    ('2023-11-15 19:30:00', 'Journey', 227300010, 710),
    ('2023-11-16 13:15:00', 'Journey', 227300011, 711),
    ('2023-11-17 18:00:00', 'Recharge', 227300012, 712),
    ('2023-11-18 10:45:00', 'Journey', 227300013, 713),
    ('2023-11-19 15:30:00', 'Journey', 227300014, 714),
    ('2023-11-10 09:15:00', 'Recharge', 227300015, 715),
    ('2023-11-11 14:30:00', 'Journey', 227300016, 700),
    ('2023-11-12 19:45:00', 'Recharge', 227300017, 701),
    ('2023-11-13 11:20:00', 'Journey', 227300018, 702),
    ('2023-11-14 16:30:00', 'Journey', 227300019, 703),
    ('2023-11-15 20:45:00', 'Recharge', 227300020, 704),
    ('2023-11-16 09:00:00', 'Journey', 227300021, 705),
    ('2023-11-17 13:15:00', 'Journey', 227300022, 706),
    ('2023-11-18 17:30:00', 'Recharge', 227300023, 707),
    ('2023-11-19 11:45:00', 'Journey', 227300024, 708),
    ('2023-11-10 15:00:00', 'Recharge', 227300025, 709),
    ('2023-11-11 18:15:00', 'Journey', 227300026, 710),
    ('2023-11-12 10:30:00', 'Journey', 227300027, 711),
    ('2023-11-13 14:45:00', 'Recharge', 227300028, 712),
    ('2023-11-14 19:00:00', 'Journey', 227300029, 713),
    ('2023-11-15 11:15:00', 'Recharge', 227300030, 714),
    ('2023-11-16 15:30:00', 'Journey', 227300031, 715),
    ('2023-11-17 09:45:00', 'Journey', 227300032, 700),
    ('2023-11-18 14:00:00', 'Recharge', 227300033, 701),
    ('2023-11-19 18:15:00', 'Journey', 227300034, 702),
    ('2023-11-10 12:30:00', 'Journey', 227300035, 703),
    ('2023-11-11 16:45:00', 'Recharge', 227300036, 704),
    ('2023-11-12 21:00:00', 'Recharge', 227300037, 705),
    ('2023-11-13 12:15:00', 'Journey', 227300038, 706),
    ('2023-11-14 16:30:00', 'Journey', 227300039, 707),
    ('2023-11-15 20:45:00', 'Recharge', 227300040, 708),
    ('2023-11-16 09:00:00', 'Journey', 227300041, 709),
    ('2023-11-17 13:15:00', 'Journey', 227300042, 710),
    ('2023-11-18 17:30:00', 'Recharge', 227300043, 711),
    ('2023-11-19 11:45:00', 'Journey', 227300044, 712),
    ('2023-11-10 15:00:00', 'Recharge', 227300045, 713),
    ('2023-11-11 18:15:00', 'Journey', 227300046, 714),
    ('2023-11-12 10:30:00', 'Recharge', 227300047, 715);

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Insert for RECHARGE_TRANSACTION
INSERT INTO [dbo].[RECHARGE_TRANSACTION] ([PAYMENT_ID], [RECHARGE_AMOUNT], [PAYMENT_METHOD]) VALUES 
    (22200000000000, 50.00, 'Credit Card'),
    (22200000000003, 75.00, 'Cash'),
    (22200000000006, 30.00, 'Debit Card'),
    (22200000000009, 45.00, 'Credit Card'),
    (22200000000012, 20.00, 'Cash'),
    (22200000000015, 55.00, 'Debit Card'),
    (22200000000017, 70.00, 'Credit Card'),
    (22200000000020, 40.00, 'Cash'),
    (22200000000023, 25.00, 'Debit Card'),
    (22200000000025, 60.00, 'Credit Card'),
    (22200000000028, 35.00, 'Cash'),
    (22200000000030, 90.00, 'Debit Card'),
    (22200000000033, 15.00, 'Credit Card'),
    (22200000000036, 75.50, 'Credit Card'),
    (22200000000037, 30.25, 'Debit Card'),
    (22200000000040, 42.75, 'Cash'),
    (22200000000043, 60.00, 'Credit Card'),
    (22200000000045, 35.20, 'Cash'),
    (22200000000047, 90.50, 'Debit Card');

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Insert statements from JOURNEY_TRANSACTION
INSERT INTO [dbo].[JOURNEY_TRANSACTION] (TRANSACTION_ID, ROUTES_ID) VALUES 
    (22200000000001, 902),
    (22200000000002, 901),
    (22200000000004, 903),
    (22200000000005, 904),
    (22200000000007, 902),
    (22200000000008, 901),
    (22200000000010, 904),
    (22200000000011, 903),
    (22200000000013, 901),
    (22200000000014, 903),
    (22200000000016, 902),
    (22200000000018, 901),
    (22200000000019, 903),
    (22200000000021, 904),
    (22200000000022, 902),
    (22200000000024, 901),
    (22200000000026, 904),
    (22200000000027, 903),
    (22200000000029, 902),
    (22200000000031, 901),
    (22200000000032, 904),
    (22200000000034, 903),
    (22200000000035, 902),
    (22200000000038, 901),
    (22200000000039, 903),
    (22200000000041, 904),
    (22200000000042, 902),
    (22200000000044, 901),
    (22200000000046, 904);

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Insert Statements for INCIDENTS table
INSERT INTO [dbo].[INCIDENTS] ([TYPE], INCIDENT_TIMESTAMP, INCIDENT_DESCRIPTION, EMPLOYEE_INVOLVED, VEHICLE_INVOLVED) VALUES 
    ('Technical', '2023-11-25 08:30:00', 'Engine malfunction detected during routine check.', 101, 8731),
    ('On-site', '2023-11-25 14:45:00', 'Minor injury reported at the construction site.', 102, NULL),
    ('Security', '2023-11-22 19:20:00', 'Unauthorized access attempt to the storage area.', 103, NULL),
    ('On-road', '2023-11-20 09:00:00', 'Vehicle #12 involved in a low-impact collision.', 104, 8733),
    ('Technical', '2023-11-18 11:15:00', 'Signal system showing intermittent errors.', 105, NULL),
    ('On-site', '2023-11-16 16:50:00', 'Equipment failure at the north wing.', 106, NULL),
    ('Security', '2023-11-15 20:30:00', 'Suspicious activity near the main entrance.', 107, NULL),
    ('On-road', '2023-11-13 07:40:00', 'Brake system of vehicle #7 required emergency repair.', 108, 8729);

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Inserting data into MAINTENANCE table
INSERT INTO [dbo].[MAINTENANCE] (TRAIN_ID, PERSON_INCHARGE, [DATE], [DESCRIPTION], TYPE_OF_MAINTENANCE)
VALUES (8729, 127, '2023-11-25', 'Regular maintenance for Train 8729', 'Regular Maintenance'),
    (8731, 128, '2023-11-26', 'Accidental maintenance for Train 8731', 'Accidental Maintenance'),
 (8732, 127, '2023-11-27', 'Regular maintenance for Train 8732', 'Regular Maintenance'),
 (8733, 128, '2023-11-28', 'Accidental maintenance for Train 8733', 'Accidental Maintenance'),
 (8734, 127, '2023-11-29', 'Regular maintenance for Train 8734', 'Regular Maintenance');
