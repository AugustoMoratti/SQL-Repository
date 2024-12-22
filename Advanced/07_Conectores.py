import mysql.connector

def print_user(user):


    config = {
        "host" : "127.0.0.1",
        "port" : "3306",
        "database" : "hello_sql",
        "user" : "root",
        "password" : "Deljuliagu3!"
    }

    connection = mysql.connector.connect(**config)
    cursor = connection.cursor()

    query = "SELECT * FROM users WHERE name = %s;"
    print(query)
    cursor.execute(query, (user,))
    result = cursor.fetchall()

    for row in result:
        print(row)
        
    cursor.close()
    connection.close()

print_user("unNombree")


#print_user("'; UPDATE users SET age = 15 WHERE user_id = 1; --")

# injection sql en python tambien, buscar en google. Es para la seguridad de nuestra DB.



