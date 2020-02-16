require 'peep'
describe 'Peep' do
    describe '#all' do
        it 'it shows all peeps' do
            connection = PG.connect(dbname: 'chitter_peeps_test')
            
            connection.exec("INSERT INTO peeps (peep) VALUES('Happy Saturday');")
            connection.exec("INSERT INTO peeps (peep) VALUES('Coffee time!');")
            connection.exec("INSERT INTO peeps (peep) VALUES('Feeling tired...');")

            peep = Peep.all

            expect(peep).to include "Happy Saturday"
            expect(peep).to include "Coffee time!"
            expect(peep).to include "Feeling tired..."
        end
    end
end