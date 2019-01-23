feature 'Player 1 attack player 2' do
  scenario "Can reduce player 2 HP" do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content "Cat attacked Dog succesfully"
  end
end
