import mysql.connector


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

    def BuildDatabase(self):
        reader = open("Resources\DatabaseSchema.sql", "r")
        sqlStatements = reader.read().split(';')

        for statement in sqlStatements:
            self.cursor.execute(statement)

    def Close(self):
        self.db.close()
