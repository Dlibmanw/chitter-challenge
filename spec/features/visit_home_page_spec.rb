require 'spec_helper'

feature 'Posting peeps' do
    scenario 'A user can add a post to Chitter' do
        visit('/')
        expect(page).to have_content "Welcome to Chitter!"
    end
end