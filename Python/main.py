from Database import Database
from enum import Enums
from Models.TableEnum import Tables

try:
    db = Database()
    db.BuildDatabase()
    db.Select(Tables.Trips)

except Exception as err:
    print(err)

finally:
    db.Close()