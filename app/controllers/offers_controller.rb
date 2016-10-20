class OffersController < ApplicationController
  def index
  end

  def update
  end

  def new
  end

  def create
    @fine = Fine.find(params[:fine_id])
    Fine.create!(offers_params)
    redirect_to fine_path(@fine)
  end

  def offers_params
    params.require(:offer).permit(:user_id, :comment)
  end

end
