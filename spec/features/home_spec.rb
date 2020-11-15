feature 'homepage' do
  
  before do
    Timecop.freeze(Time.local(2020, 12, 31))
  end

  after do
    Timecop.return
  end

  scenario 'User is greeted with "Hello there!" when visiting the home page' do
    visit '/'
    expect(page).to have_content("Hello there!")
  end

  scenario 'User can enter their name' do
    visit '/'
    fill_in('fname', with: 'Symion')
    fill_in_date
    click_button('Submit')
    expect(page).to have_content("Symion")
  end

  scenario 'User can enter the day of their birthday' do
    visit ('/')
    fill_in "day", with: '30'
    select "December", :from => 'month'
    click_button('Submit')
    expect(page).to have_content("There are 364 days until your birthday")
  end
end

