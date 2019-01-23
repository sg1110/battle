feature 'Enter player names' do
  scenario "Can receive entered player names" do
    sign_in_and_play
    expect(page).to have_content 'Cat vs. Dog'
  end
end
