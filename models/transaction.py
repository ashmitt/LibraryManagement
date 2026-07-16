from datetime import date


class Transaction:
    def __init__(self,
                 transaction_id:int,
                 member_id:int,
                 book_id:int,
                 issue_date:date,
                 due_date:date,
                 return_date:date,
                 status="issued"
                 ):
        self.transaction_id = transaction_id
        self.member_id = member_id
        self.book_id = book_id
        self.issue_date = issue_date
        self.due_date = due_date
        self.return_date = return_date
        self.status = status

