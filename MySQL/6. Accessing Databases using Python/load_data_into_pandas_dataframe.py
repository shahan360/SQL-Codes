# Step 1 : Import Libraries
import mysql.connector as sql
import pandas as pd

# Step 2 : Create Connection object

db = sql.connect(host = "localhost" , user = "root" , passwd = "" , database = "people")

# Step 3 : Create Data as Pandas Dataframe
query = "select * from citizen"

data = pd.read_sql(query, db , chunksize = 100)

# Step 4 : Lets Print the Data pandas.read_sql(sql, con, index_col='None', coerce_float='True', params='None', parse_dates='None', columns='None', chunksize: None = 'None') → DataFrame[source]
for dat in data :
	print(dat.shape)

# CSV , SQL