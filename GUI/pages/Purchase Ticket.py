
import pyodbc
import streamlit as st
import pandas as pd


SERVER = st.secrets["SERVER"]
DATABASE = st.secrets["DATABASE"]
USERNAME = st.secrets["USERNAME"]
PASSWORD = st.secrets["PASSWORD"]

connectionString = f'DRIVER={{ODBC Driver 18 for SQL Server}};SERVER={SERVER};DATABASE={DATABASE};UID={USERNAME};PWD={PASSWORD};TrustServerCertificate=yes'

if 'active_recharge_page' not in st.session_state:
    st.session_state['active_recharge_page'] = True


if 'conn' not in st.session_state:
    st.session_state['conn'] = pyodbc.connect(connectionString)

if 'station_data' not in st.session_state:
    st.session_state.station_data = {
        700: "Boston College",
        701: "Cleveland Circle",
        702: "Riverside",
        703: "Heath Street",
        704: "Kenmore",
        705: "Copley",
        706: "Haymarket",
        707: "North Station",
        708: "Lechmere",
        709: "Oak Grove",
        710: "Forest Hill",
        711: "Roxbury Crossing",
        712: "BU Central",
        713: "Fenway",
        714: "Northeastern",
        715: "Coolidge Corner",
        716: "Medford",
        717: "Government Center"
    }

if 'route_data' not in st.session_state:
    st.session_state.route_data = {
        900	: "Green Line B",
        901	: "Green Line C",
        902	: "Green Line D",
        903	: "Green Line E",
        904 : "Orange Line"
    }
  

def get_station_id(station_name):
    for code, name in st.session_state.station_data.items():
        if name == station_name:
            return code
    return None

def get_route_id(route_name):
    for id, name in st.session_state.route_data.items():
        if name == route_name:
            return id
    return None

if st.session_state['active_recharge_page'] == True:

    card_id = st.text_input('Card ID', placeholder ='07-Digit Card ID')
    
    all_station_names = list(st.session_state.station_data.values())
    station_name = st.selectbox(
    "Station Name",
    all_station_names,
    index=None,
    placeholder="Select current station",
    )
    
    all_route_names = list(st.session_state.route_data.values())
    route_name = st.radio(
        "Mode of Payment",
        all_route_names,
        index=None,
    )

    if st.button('Submit'):
        try:
            card_id = int(card_id)
        except Exception as e :
            st.error("Please enter a valid integer for the Card ID.")
            print(e)
            st.stop()

        if station_name != None:
            station_id = get_station_id(station_name)
        else:
            st.error("Select Station")
            st.stop()

        if route_name != None:
            route_id = get_route_id(route_name)
        else:
            st.error("Select Station")
            st.stop()

        try:
            if 'conn' not in st.session_state:
                st.session_state['conn'] = pyodbc.connect(connectionString)

            cursor = st.session_state['conn'].cursor()

            # Declare a variable to hold the output parameter
            response_value = None

            st.write("""SET NOCOUNT ON;
                DECLARE @response varchar(55);
                EXEC [dbo].[ADD_JOURNEY_TRANSACTION] ?, ?, ?, @msg = @response OUTPUT;
                SELECT @response AS Response;
            """, card_id, station_id, route_id)

            # Execute the stored procedure
            cursor.execute("""SET NOCOUNT ON;
                DECLARE @response varchar(55);
                EXEC [dbo].[ADD_JOURNEY_TRANSACTION] ?, ?, ?, @msg = @response OUTPUT;
                SELECT @response AS Response;
            """, card_id, station_id, route_id)

            # Commit the transaction
            row = cursor.fetchone()

            # Check if the result is not None
            if row:
                response_value = row.Response

            # Commit the transaction
            st.session_state['conn'].commit()

            # Display the result
            st.write("Response:", response_value)

        except Exception as e:
            st.error(f"An error occurred: {e}")
            print(e)
            st.stop()

        finally:
            if 'cursor' in locals():
                cursor.close()
            if 'db_connection' in locals():
                db_connection.close()

        st.success(f"Recharge Successful {card_id} {response_value}")