def fill_in_date
  fill_in :day, with: '30'
  select "December", :from => 'month'
end