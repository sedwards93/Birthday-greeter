class User
  require 'date'

attr_reader :name, :day, :month

  def initialize(name, day, month)
    @name = name
    @day = day
    @month = month
    
  end

  def birthday
    # month_converter
    @days = (Date.new(Date.today.year, @month, @day) - Date.today).to_i
    @days
  end

  #  private

  # def month_converter
  #   months = {"January" => 1, "February" => 2, "March" => 3, "April" => 4,"May" => 5, "June" => 6, "July" => 7,
  #     "August" => 8, "September" => 9, "October" => 10, "November" => 11, "December" => 12} 
  #   @month = months[month]
  # end
end