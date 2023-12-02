import mysql.connector
from Models.TableEnum import Tables
from errno import errorcode

class Database:
    db = None
    cursor = None

    config = {
        "user": "OutlandAdventures_user",
        "password": "Explore",
        "host": "127.0.0.1",
        "database": "OutlandAdventures",
        "raise_on_warnings": True
    }

    try:
        db = mysql.connector.connect(**config)
        print(
            "\n Database user {} connected to MySQL on host {} with database {}".format(config["user"], config["host"],
                                                                                        config["database"]))
        # input("\n\n Press Any key to continue")

    except mysql.connector.Error as err:
        if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
            print("  The supplied u")

    def __init__(self) -> None:
        self.db = mysql.connector.connect(**self.config)
        self.cursor = self.db.cursor()

    # Read and execute each statement in the DatabaseSchema
    def BuildDatabase(self):
        reader = open("Resources/DatabaseSchema.sql", "r")
        sqlStatements = reader.read().split(';')

        for statement in sqlStatements:
            self.cursor.execute(statement)

    # Select All records from the provided table
    def SelectAll(self, Tables):
        self.cursor.execute(f"SELECT * FROM {Tables}")
        output = self.cursor.fetchall()

        return output

    # Close the connection
    def Close(self):
        self.db.close()
