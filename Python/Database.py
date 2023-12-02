import mysql.connector
from Models.TableEnum import Tables


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

    def __init__(self) -> None:
        self.db = mysql.connector.connect(**self.config)
        self.cursor = self.db.cursor()

    # Read and execute each statement in the DatabaseSchema
    def BuildDatabase(self):
        reader = open("Resources\DatabaseSchema.sql", "r")
        sqlStatements = reader.read().split(';')

        for statement in sqlStatements:
            self.cursor.execute(statement)
            
    # Select All records from the provided table
    def SelectAll(self, Tables):
        self.cursor.execute(f"SELECT * FROM {Tables}")
        output = self.cursor.fetchall()
        
        return output

    #Close the connection
    def Close(self):
        self.db.close()
