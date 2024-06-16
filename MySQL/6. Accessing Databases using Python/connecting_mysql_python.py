# Step 1 : Import required Libraries 
import mysql.connector as sql

# Step 2 : Create Connection
db = sql.connect(host = "localhost" , user = "root" , passwd = "" , database = "people")

# Step 3 : Create Executor 
executor = db.cursor()

# Step 4 : Get the Data by executing your queries
executor.execute("select * from citizen")

# Step 5 : Print the Data 
#print(executor)

for i in executor :
	print(i)
