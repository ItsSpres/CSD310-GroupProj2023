from Database import Database
from enum import Enum
from Models.TableEnum import Tables

try:
    db = Database()
    db.BuildDatabase()

    # Get Trips table
    trips = db.SelectAll(Tables.trip)
    print('Trips')
    for trip in trips:
        print(f"{trip[0]}, {trip[1]}, {trip[2]}, {trip[3]}, {trip[4]}, {trip[5]}, {trip[6]}, {trip[7]}, {trip[8]}")

except Exception as err:
    print(err)

finally:
    db.Close()