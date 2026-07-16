class Book:
    def __init__(self,
                 book_id: int,
                 title:str,
                 author:str,
                 publisher:str,
                 genre:str,
                 isbn:str,
                 publication_year:int,
                 copies_total:int,
                 copies_available:int,
                 created_at = None):
        self.book_id = book_id
        self.title = title
        self.author = author
        self.publisher = publisher
        self.genre = genre
        self.isbn = isbn
        self.publication_year = publication_year
        self.copies_total = copies_total
        self.copies_available = copies_available
        self.created_at = created_at


    def __repr__(self) -> str:
        return (f"Book ID: {self.book_id}, Title: {self.title}, Author : {self.author} ")