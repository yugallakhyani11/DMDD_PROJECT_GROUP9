import pyodbc
import streamlit as st
import pandas as pd

SERVER = st.secrets["SERVER"]
DATABASE = st.secrets["DATABASE"]
USERNAME = st.secrets["USERNAME"]
PASSWORD = st.secrets["PASSWORD"]

connectionString = f'DRIVER={{ODBC Driver 18 for SQL Server}};SERVER={SERVER};DATABASE={DATABASE};UID={USERNAME};PWD={PASSWORD};TrustServerCertificate=yes'

# conn = pyodbc.connect(connectionString)
st.set_page_config(page_title='Q&A : Home', page_icon='🍥', layout='wide')

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

SQL_QUERY = "select TOP 2 * from EMPLOYEE; "

def get_station_id(station_name):
    for code, name in st.session_state.station_data.items():
        if name == station_name:
            return code
    return None

all_station_names = list(st.session_state.station_data.values())
station_name1 = st.selectbox(
    "Current Station",
    all_station_names,
    index=None,
    placeholder="Select current station",
    )

station_name2 = st.selectbox(
    "Desitination Station",
    all_station_names,
    index=None,
    placeholder="Desitination Station [Optional]",
    )

if station_name1 == None and station_name1 == None:
    st.header("Welcome to Boston Transit System")
else:
        station_id1 = get_station_id(station_name1)
        station_id2 = get_station_id(station_name2)
        try:
            conn1=pyodbc.connect(connectionString)

            cursor = conn1.cursor()

            # st.write("""EXEC STR_PROC_GET_SCHEDULE_BETWEEN_TWO_STATIONS ?, ?""",station_id1, station_id2)
            # Execute the query using the cursor
            cursor.execute("""EXEC STR_PROC_GET_SCHEDULE_BETWEEN_TWO_STATIONS ?, ?""",station_id1, station_id2)

            # Fetch all the rows using cursor.fetchall()
            rows = cursor.fetchall()

            # Get the column names from the cursor.description
            columns = [column[0] for column in cursor.description]

            # Create a DataFrame using the fetched rows and column names
            df = pd.DataFrame.from_records(rows, columns=columns)

            st.table(df)
        except Exception as e:
                st.error(f"An error occurred: {e}")
                print(e)
                st.stop()
        
        finally:
            if 'cursor' in locals():
                cursor.close()
            if 'db_connection' in locals():
                db_connection.close()
    # st.success(f"Recharge Successful {card_id} {response_value}")