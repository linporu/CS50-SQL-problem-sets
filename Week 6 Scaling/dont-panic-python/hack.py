from cs50 import SQL


def main():

    db = SQL("sqlite:///dont-panic.db")
    password = input("Enter a password: ")
    db.execute(
        """
        UPDATE "users"
        SET "password" = ?
        WHERE "username" = 'admin';
        """,
        password
    )


if __name__ == "__main__":
        main()
