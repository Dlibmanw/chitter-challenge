require 'peep'
describe 'Peep' do
    describe '#all' do
        it 'shows all peeps' do
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
    describe '#create' do
        it 'let the user add a new peep' do
            Peep.create('I have something to say')
            expect(Peep.all).to include 'I have something to say'
        end
    end
end