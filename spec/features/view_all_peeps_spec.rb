feature 'Viewing peeps' do
    scenario 'A user can see peeps' do
      visit('/peeps')
      expect(page).to have_content "Happy Saturday"
      expect(page).to have_content "Coffee time!"
      expect(page).to have_content "Feeling tired..."
    end
  end
  