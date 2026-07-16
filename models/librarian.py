from datetime import datetime

class Librarian:
    def __init__(self,
                 librarian_id: int,
                 username: str,
                 pswd : str,
                 created_at = None) -> None:
        self.librarian_id = librarian_id
        self.username = username
        self.password = pswd
        self.created_at = created_at

    def __repr__(self) -> str:
        return f"Librarian ID: {self.librarian_id}, Username:{self.username})"
# For Test Purposes
if __name__ == "__main__":
    librarian = Librarian(
        librarian_id=1,
        username="test",
        pswd="1234",
        created_at= datetime.now()
    )
    print(librarian)