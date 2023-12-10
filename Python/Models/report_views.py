import mysql.connector

db = mysql.connector.connect(
    host="127.0.0.1",
    user="OutlandAdventures_user",
    password="Explore",
    database="outlandadventures"
)
print("\nReport for Trips taken in Certain Countries\n")
cursor = db.cursor()


#report for trips at certain countries
sql = 'SELECT trip_name AS Trip, d.destination_name AS Location, YEAR(t.end_date) AS Year FROM trip t JOIN Destination d ON t.destination_id = d.destination_id;'

cursor.execute(sql)
all_rows = cursor.fetchall()

# Get the column names
column_names = [i[0] for i in cursor.description]

# Calculate the maximum length of each column
max_lengths = [len(name) for name in column_names]
for row in all_rows:
    for i, value in enumerate(row):
        max_lengths[i] = max(max_lengths[i], len(str(value)))

# Print the column headers
for i, name in enumerate(column_names):
    print(f'{name.ljust(max_lengths[i])}', end=' | ')
print()

# Print the separator line
print('-' * (sum(max_lengths) + len(max_lengths) * 3 - 1))

# Print the rows
for row in all_rows:
    for i, value in enumerate(row):
        print(f'{str(value).ljust(max_lengths[i])}', end=' | ')
    print()

cursor.close()
db.close()
