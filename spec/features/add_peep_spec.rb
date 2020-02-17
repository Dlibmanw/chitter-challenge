require 'spec_helper'
feature 'Adding a peep' do
    scenario 'A user can add a new peep to Chitter' do
        visit('/peeps/new')
        fill_in('peep', with: 'I have nothing to add')
        click_button('Submit')
        expect(page).to have_content('I have nothing to add')
    end
end