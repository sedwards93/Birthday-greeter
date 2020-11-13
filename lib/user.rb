class User
require 'date'

attr_reader :name, :day, :month, :month_now, :day_now

  def initialize(name, day, month)
    @name = name
    @day = day
    @month = month
    @month_now = Date.today.strftime("%B")
    @day_now = Date.today.strftime("%e")
  end

  def birthday
    birthday = Date.parse(@day, @month)
    p birthday
  end

end