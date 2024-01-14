# Boston Transit Database Management System

Welcome to the Boston Transit Database Management System project! This comprehensive system is designed to manage the operations of the Massachusetts Bay Transportation Authority (MBTA) system in Boston. The project covers a wide range of functionalities, including personnel management, route planning, rider information, financial transactions, and incident tracking.

## Entity Relationship Diagram (ERD)

Our database is structured around several key entities, each representing a crucial aspect of the transit system. The relationships between these entities are carefully defined to ensure data integrity and efficient management.

![ERD](https://github.com/yugallakhyani11/DMDD_PROJECT_GROUP9/blob/main/Diagrams/Final%20ERD.png)

## Features

### 1. Stored Procedures

#### - `STR_PROC_GET_COMPLAINT_STATUS`
   - Retrieves the current status of a specific complaint.
   - Parameters: @RiderID, @ComplaintID, @ComplaintDescription
   - Output: A string message in @OutputMessage describing the status.

#### - `STR_PROC_ADD_COMPLAINT_RESPONSE`
   - Records a response to a specific complaint.
   - Parameters: @ComplaintID, @ResponseTimestamp, @ResponseDescription, @ResolvedBy
   - Output: Updates the complaint record with a response.

#### - `STR_PROC_GET_SCHEDULE_BY_STATION_ID`
   - Fetches the train schedule for a given station.
   - Parameters: @StationID
   - Output: Result set including train names, scheduled departure and arrival times, and days of operation.

#### - `STR_PROC_GET_SCHEDULE_BETWEEN_TWO_STATIONS`
   - Retrieves the train schedule between two specified stations.
   - Parameters: @StartStationID, @EndStationID
   - Output: Result set with train names, start and end stations, and scheduled times.

### 2. User-Defined Functions

#### - `dbo.CalculateAge`
   - Calculates the age of an individual based on their birthdate.
   - Parameters: @Birthdate (DATE)
   - Output: Integer representing the calculated age.

#### - `dbo.GenerateRiderAccountNo`
   - Generates a unique rider account number.
   - Parameters: @RiderID (BIGINT)
   - Output: A string representing the new rider account number.

### 3. Triggers

#### - `TGR_VALIDATE_RIDER_BEFORE_ADDING_COMPLAINT`
   - Ensures that a complaint can only be added if the rider exists in the database.

#### - `TGR_CHECK_RESOLVER_ROLE`
   - Validates that only employees with the 'Complaint Resolver' role can resolve complaints.

#### - `TGR_INSERT_RIDER_ACCOUNT_NO`
   - Automatically generates and assigns a unique rider account number after a rider record is created.

#### - `TGR_UPDATE_COMPLAINT_STATUS`
   - Updates the status of a complaint to 'Resolved' after a response is added.

#### - `TGR_UPDATE_COMPLAINT_STATUS`
   - Updates the status of a complaint to 'Resolved' after a response is added.

#### - `TGR_CHECK_RECHARGE_TRANSACTION`
   - Updates TRANSIT_CARD balance after addition of recharge transaction.

#### - `TGR_CHECK_JOURNEY_TRANSACTION`
   - Updates TRANSIT_CARD balance after addition of journey transaction.


### 4. Views

#### - `VIEW_DETAILED_RIDER_INFO`
   - Consolidates comprehensive information about riders, including transit card details and transaction history.

#### - `VIEW_INCIDENTS_BY_DATE`
   - Lists all incidents that occurred on a particular date, including details of involved employees and vehicles.

#### - `VIEW_ENHANCED_STATION_SCHEDULE_TRAFFIC`
   - Provides an overview of station activities, including train schedules, route details, and maintenance status.

#### - `VIEW_SUMMARY_BY_ROUTE`
   - Provides no of stations and no of trains on each route

#### - `VIEW_WEEKEND_SCHEDULE_SUMMARY_BY_ROUTE`
   - Provides route based weekend schedules of trains for every start stations.

#### - `VIEW_WEEKDAY_SCHEDULE_SUMMARY_BY_ROUTE`
   - Provides route based weekday schedules of trains for every start stations.

### 5. Table-Level Check Constraints

Several check constraints are in place to ensure the validity and consistency of data. These include checks on employee roles, payment methods, incident types, transaction types, employee age, and contact information.

### 6. Power BI Report

   ![Report](https://github.com/yugallakhyani11/DMDD_PROJECT_GROUP9/blob/main/Visualization/PowerBI%20Report.png)

   Visualization report that gives information about:
   - Schedule based on routes
   - Statistics about trains and stations in each route
   - Transaction summary 
   - Employee role distribution
   - Different types of incidents that have occurred 
   - No of resolved and pending complaints

### 7. Graphical User Interface
   - To get schedule trains within two stations
   - To add balance in transit card and to purchase a ticket



## Getting Started

To get started with the Boston Transit Database Management System, run the sql scripts placed under scripts folder.

For frontend:

1. **Open the Frontend folder**
    Navigate to the module directory:
   ```
   cd frontend
   ```

2. **Create a Virtual Environment:**
    Create a virtual environment and activate it:
   ```
   python -m venv venv
   source venv/bin/activate  # On Windows, use: venv\Scripts\activate
   ```

3. **Install Frontend Dependencies:**

   In the activated virtual environment, install the required Python packages:

   ```shell
   pip install -r requirements.txt
   ```

4. **Create a `secrets.toml` file**
    Create an environment variable file with the necessary variable as `.streamlit\secrets.toml`. Reference: [example_secrets.toml]()

5. **Run the Frontend Application:**

   To start the frontend application, run the following command:

   ```shell
   streamlit run main.py
   ```

## Contributors

- Uddhav Zambare
- Yugal Lakhyani
- Suhasini Polampelly
- Aditya Kotla

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.
