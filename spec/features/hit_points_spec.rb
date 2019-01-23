feature 'View hit points' do
  scenario 'see Player 2 hit point' do
    sign_in_and_play
    expect(page).to have_content 'Dog: 100HP'
  end
end
