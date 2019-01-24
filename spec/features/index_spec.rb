feature 'Enter player names' do
  scenario "Can receive entered player names" do
    sign_in_and_play
    expect(page).to have_content 'Cat vs. Dog'
  end
  scenario "Redirects to game over page if hit_points = 0" do
    sign_in_and_play
    18.times {attack_and_confirm}
    click_button "Attack"
    expect(page).to have_content "Game over!"
  end
end
