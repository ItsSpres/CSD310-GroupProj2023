from Database import Database

try:
    db = Database()
    db.BuildDatabase()

except Exception as err:
    print(err)

finally:
    db.Close()