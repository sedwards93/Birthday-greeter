feature 'homepage' do
  scenario 'User is greeted with "Hello there!" when visiting the home page' do
    visit ('/')
    expect(page).to have_content("Hello there!")
  end

  scenario 'User can enter their name' do
    visit ('/')
    fill_in :name, with: 'Symion'
    click_button('Submit')
    expect(page).to have_content("Symion")
  end

  scenario 'User can enter the day of their birthday' do
    visit ('/')
    fill_in :day, with: '13'
    fill_in :month, with: 'November'
    click_button('Submit')
    expect(page).to have_content("Happy Birthday")
  end
end

