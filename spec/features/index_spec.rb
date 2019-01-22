feature 'Enter player names' do
  scenario "Can receive entered player names" do
    visit ('/')
    fill_in :player_1_name, with: 'Cat'
    fill_in :player_2_name, with: 'Dog'
    click_button 'Submit'
    expect(page).to have_content 'Cat vs. Dog'
  end
end
