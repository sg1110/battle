feature 'View hit points' do
  scenario 'see Player 2 hit point' do
    visit ('/')
    fill_in :player_1_name, with: 'Cat'
    fill_in :player_2_name, with: 'Dog'
    click_button 'Submit'
    expect(page).to have_content 'Dog: 60HP'
  end
end
