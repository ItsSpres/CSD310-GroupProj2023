from Database import Database
from enum import Enum
from Models.TableEnum import Tables


# This gets every all records from the provided table
def GetFormattedTable(tableenum):
    # Display Table Name
    print(f"\n{tableenum.value.capitalize()}")

    # Get and Display column names for the provided table
    columns = db.getColumnNames(tableenum)
    columnString = ""

    for column in columns:
        columnString += f"{column} "

    print(columnString.replace("(","").replace(")","")[:-2])

    # Get and Display records from the provided table
    records = db.SelectAll(tableenum)

    for record in records:
        i = 0
        stringOutput = ""

        # get each column in the output
        while i < len(record):
            stringOutput += f"{record[i]}, "
            i += 1

        # Output string minus the extra comma and space
        print(stringOutput[:-2])


try:
    db = Database()
    db.BuildDatabase()

    # Get tables
    GetFormattedTable(Tables.registration)
    GetFormattedTable(Tables.customer)
    GetFormattedTable(Tables.airfare)
    GetFormattedTable(Tables.trip)
    GetFormattedTable(Tables.employee)
    GetFormattedTable(Tables.destination)
    GetFormattedTable(Tables.marketing)
    GetFormattedTable(Tables.equipment)
    GetFormattedTable(Tables.product)


except Exception as err:
    print(err)

finally:
    try:
        db.Close()
    except:
        print("The Database failed to close due to it never being created.")
