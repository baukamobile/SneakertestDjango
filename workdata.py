import mysql.connector

# Connect to the database
db = mysql.connector.connect(host='localhost', user='root', password='password', database='my_database')

# Create a cursor
cursor = db.cursor()

# Execute a SQL query
cursor.execute('SELECT * FROM my_table')

# Get the results
results = cursor.fetchall()

# Close the cursor and connection
cursor.close()
db.close()
