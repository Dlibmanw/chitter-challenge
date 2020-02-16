require 'pg'
feature 'Viewing peeps' do
    scenario 'A user can see peeps' do
      connection = PG.connect(dbname: 'chitter_peeps_test')
      connection.exec("INSERT INTO peeps VALUES(1, 'Happy Saturday');")
      connection.exec("INSERT INTO peeps VALUES(2, 'Coffee time!');")
      connection.exec("INSERT INTO peeps VALUES(3, 'Feeling tired...');")
      
      visit('/peeps')

      expect(page).to have_content "Happy Saturday"
      expect(page).to have_content "Coffee time!"
      expect(page).to have_content "Feeling tired..."
    end
  end
  