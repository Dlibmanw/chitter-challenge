require 'pg'
#setting up the test database
def set_up_test_database 
    connection = PG.connect(dbname: 'chitter_peeps_test')
    #clear the peeps table
    connection.exec("TRUNCATE peeps;")
end