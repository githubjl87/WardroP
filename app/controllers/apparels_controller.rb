class ApparelsController < ApplicationController
  before_action :set_apparel, only: :show

  def index
    @apparels = Apparel.all
  end

  def show
  end

  def new
    @apparel = Apparel.new
  end

  def create
    @apparel = Apparel.new(apparel_params)
    if @apparel.save
      redirect_to apparels_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_apparel
    @apparel = Apparel.find(params[:id])
  end

  def apparel_params
    params.require(:apparel).permit(:name, :size, :category, :price, :overview)
  end
end
