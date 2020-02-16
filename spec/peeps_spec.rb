require 'peep'
describe 'Peep' do
    describe '#all' do
        it 'it shows all peeps' do
            peep = Peep.all
            expect(peep).to include "Happy Saturday"
            expect(peep).to include "Coffee time!"
            expect(peep).to include "Feeling tired..."
        end
    end
end