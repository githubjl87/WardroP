class RentalsController < ApplicationController
  before_action :set_apparel, only: :create
  before_action :set_rental, only: [:edit, :update]

  def index
    @rentals = Rental.all
  end

  def create
    @apparel = Apparel.find(params[:apparel_id])
    @rental = Rental.new(rental_params)
    @rental.apparel = @apparel
    @rental.user = current_user
    if @rental.save
      redirect_to rentals_path
    else
      render "apparels/show", status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @rental.update(rental_params)
      redirect_to rentals_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_apparel
    @apparel = Apparel.find(params[:apparel_id])
  end

  def set_rental
    @rental = Rental.find(params[:id])
  end

  def rental_params
    params.require(:rental).permit(:start_date, :end_date, :status)
  end
end
