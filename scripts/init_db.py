from db_lib import *


def main():
    structure = "../sql/table_structure/"
    data = "../sql/data/"
    sql_file_paths = [
        structure + "create.sql",
        # data + "fill_db.sql",
    ]

    conn = connect_to_db(**db_config)
    if conn:
        # Executing SQL commands from the file
        for sql_file_path in sql_file_paths:
            execute_sql_file(conn, sql_file_path)

        # Closing the database connection
        conn.close()
        print("Database connection closed.")


if __name__ == "__main__":
    main()
