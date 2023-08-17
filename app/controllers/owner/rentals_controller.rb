class Owner::RentalsController < ApplicationController

  def index
    @apparels = Apparel.all
    @rentals = Rental.all
  end
end
