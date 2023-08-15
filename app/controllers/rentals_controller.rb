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
    if @rental.save
      redirect_to apparel_path(@apparel)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @rental.update(rental_params)
      redirect_to rental_path(@rental)
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
    param.require(:rental).permit(:start_date, :end_date, :status)
  end
end
