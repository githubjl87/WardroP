class ApparelsController < ApplicationController
  before_action :set_apparel, only: [:show, :edit, :update]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @apparels = Apparel.all
    @apparels = Apparel.search(params[:search][:query]) if params[:search].present?
  end

  def show
    @rental = Rental.new
    @apparel = Apparel.find(params[:id])
  end

  def new
    @apparel = Apparel.new
  end

  def edit
  end

  def update
    if @apparel.update(apparel_params)
      redirect_to owner_rentals_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def create
    @apparel = Apparel.new(apparel_params)
    @apparel.user = current_user
    if @apparel.save
      redirect_to owner_rentals_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_apparel
    @apparel = Apparel.find(params[:id])
  end

  def apparel_params
    params.require(:apparel).permit(:name, :size, :category, :price, :overview, :photo)
  end
end
