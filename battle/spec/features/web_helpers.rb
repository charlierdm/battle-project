def sign_in_and_play
  visit('/')
  fill_in :player1, with: 'Pete'
  fill_in :player2, with: 'Adam'
  click_button "Submit"
end
