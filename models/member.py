class Member:
    def __init__(self,
                 member_id: int,
                 name: str,
                 email: str,
                 phone:str,
                 pswd: str,
                 joined_at,
                 status="active"):
        self.member_id = member_id
        self.name = name
        self.email = email
        self.phone = phone
        self.password = pswd
        self.joined_at = joined_at
        self.status = status
    def __repr__(self):
        return f"Member ID:{self.member_id}, Name:{self.name}, Phone:{self.phone}"