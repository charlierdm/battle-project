feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Welcome to battle'
  end
end

feature 'Test input' do
  scenario 'enter player names' do
    sign_in_and_play
    expect(page).to have_content 'Pete vs Adam'
  end
end

  feature 'Test input' do
    scenario 'see players HP' do
      sign_in_and_play
      expect(page).to have_content 'Pete vs Adam: 100HP'
    end
end
