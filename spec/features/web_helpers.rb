def sign_in_and_play
  visit ('/')
  fill_in :player_1_name, with: 'Cat'
  fill_in :player_2_name, with: 'Dog'
  click_button 'Submit'
end

def attack_and_confirm
  srand(6)
  click_button 'Attack'
  click_button 'Ok'
end
