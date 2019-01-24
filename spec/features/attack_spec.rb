feature 'Attack and reduce points' do
  scenario "Can reduce player 2 HP" do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content "Cat attacked Dog succesfully"
  end

  scenario "Can reduce player 2 HP by 10 points" do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Ok'
    expect(page).to have_content "Dog: 90HP"
  end

  scenario 'Multiple attacks reduce both scores' do
    sign_in_and_play
    3.times { attack_and_confirm }
    expect(page).to have_content "Dog: 80HP"
  end
end
