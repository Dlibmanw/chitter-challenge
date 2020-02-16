require 'pg'
class Peep
   
    def self.all
        if ENV['ENVIRONEMT'] =='test'
            connection = PG.connect(dbname: 'chitter_peeps_test')
        else 
            connection = PG.connect(dbname: 'chitter_peeps')
        end
        result = connection.exec("SELECT * FROM peeps")
        result.map { |peep| peep['peep'] }
    end
end
