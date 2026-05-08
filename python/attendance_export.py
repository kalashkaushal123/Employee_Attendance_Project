# (mysql.connector) Used to connect Python with MySQL database.
# (Workbook) Used to create Excel files.
# (Cursor) helps Python run SQL queries.  -- Cursor = SQL command executor
# (cursor.execute(query)) Run SQL query in MySQL database.
# (wb = Workbook()) Creates new Excel file.


import mysql.connector
from openpyxl import Workbook

# Connect MySQL
conn = mysql.connector.connect(
    host = "localhost",
    user = "root",
    password = "root",
    database = "attendance_db"
)

cursor = conn.cursor()


# sql query

query = """
SELECT 
e.employee_name,
e.department,
a.attendance_date,
a.status

FROM employees e

JOIN attendance a 
ON e.employee_id = a.employee_id
"""

cursor.execute(query)

data = cursor.fetchall()


# Create Excel Workbook

wb = Workbook()

ws = wb.active
ws.title = "Attendance Report"



# Headers

headers = [                             # These become first row in Excel.
    "Employee Name",
    "Department",
    "Date",
    "Status"
]

ws.append(headers)                      # Add Headers to Excel



# Insert Data

for row in data:                        # Insert Database Data (Loop runs through every database row. ('Neha', 'IT', '2025-05-01', 'present') gets added to Excel sheet.)
    ws.append(row)



# Save Excel File

wb.save("../excel_reports/attendance_report.xlsx")

print("Excel report created successfully!")











# import mysql.connector

# conn = mysql.connector.connect(
#     host="localhost",
#     user="root",
#     password="root",
#     database="attendance_db"
# )

# cursor = conn.cursor()

# cursor.execute("SELECT * FROM employees")

# data = cursor.fetchall()

# for row in data:
#     print(row)