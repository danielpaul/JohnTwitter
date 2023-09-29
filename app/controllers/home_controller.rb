class HomeController < ApplicationController
  def index
    @days_left = days_left
  end

  private

  def days_left
    # Get today's date
    today = Date.today

    # Find the next Christmas date
    christmas = Date.new(today.year, 12, 25)

    # If today is after Christmas, calculate days to next Christmas
    christmas = Date.new(today.year + 1, 12, 25) if today > christmas

    # Calculate the difference in days
    difference = (christmas - today).to_i
  end
end