from config.database import get_connection
from models.member import Member


def authenticate(user_id, password):
    conn =get_connection()
    if conn is None:
        raise Exception("Database connection failed")
    cursor = conn.cursor()
    try:
        query = '''
            select *
            from members m
            where member_id = %s and password = %s
        '''
        cursor.execute(query, (user_id, password))
        row=cursor.fetchone()
        if row:
            member = Member(row[0], row[1], row[2], row[3], row[4], row[5],row[6])
            return member
    finally:
        cursor.close()
        conn.close()

# Creating Members
def register_user(name,email,phone,password,status):
    conn = get_connection()
    if conn is None:
        raise Exception("Database connection failed")
    cursor = conn.cursor()
    try:
        cursor.execute("select member_id from members where email = %s",(email,))
        if cursor.fetchone():
            raise Exception("Email already registered")
        if phone:
            cursor.execute("select member_id from members where phone = %s",(phone,))
            if cursor.fetchone():
                raise Exception("Phone already registered")
        member_query = '''
                    insert into members (name,email,phone,password,status) values
                    (%s,%s,%s,%s,%s)
                    '''
        cursor.execute(member_query, (name,email,phone,password,status))
        conn.commit()

    except Exception as e:
        conn.rollback()
        raise e
    finally:
        cursor.close()
        conn.close()
#for updating members data
def update_member(member_id, name, email, phone, password=None):
    conn = get_connection()
    if conn is None:
        raise Exception("Database connection failed")
    cursor = conn.cursor()
    try:
        #For updating Mail id
        cursor.execute("select member_id from members where member_id = %s",(member_id,))
        if cursor.fetchone():
            raise Exception("email already registered")
        #for updating phone number
        if phone:
            cursor.execute("select member_id from members where phone = %s",(phone,))
            if cursor.fetchone():
                raise Exception("phone number already registered")
        user_query = """
                    update members set 
                    name = %s, email = %s, phone = %s, password = %s
                    where member_id = %s
        """
        cursor.execute(user_query, (name,email,phone,password,member_id))
        conn.commit()
        return True
    except Exception as e:
        conn.rollback()
        raise e
    finally:
        cursor.close()
        conn.close()

#deleting Members
def delete_member(member_id):
    conn = get_connection()
    if conn is None:
        raise Exception("Database connection failed")
    cursor = conn.cursor()
    try:
        cursor.execute("delete from members where member_id = %s",(member_id,))
        if cursor.rowcount == 0:
            raise Exception(f"Member {member_id} not found")
        conn.commit()
        return True
    except Exception as e:
        conn.rollback()
        raise e
    finally:
        cursor.close()

#All members list
def get_all_members():
    pass

#Search user by different methods Categories (mainly using wild card chracters in MySQL format)
def get_member_by_details(member_id,name,email,phone):
    pass