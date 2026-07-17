import mysql.connector as mysql
from dotenv import load_dotenv
import os

load_dotenv()


def get_connection():
    try:
        conn = mysql.connect(
            host=os.getenv("DB_HOST"),
            user=os.getenv("DB_USER"),
            password=os.getenv("DB_PASSWORD"),
            database=os.getenv("DB_NAME")
        )
        return conn
    except mysql.Error as e:
        print("Connection Error:", e)


if __name__ == "__main__":
    conn = get_connection()
    print(conn)
