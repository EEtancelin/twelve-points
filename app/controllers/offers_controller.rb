class OffersController < ApplicationController
  def index
  end

  def update
  end

  def new
  end

  def create
    @new_offer = Offer.new(offer_params)
    @fine = Fine.find (params[:fine_id])
    @new_offer.fine = @fine
    @new_offer.save
    redirect_to fine_path(@fine)
  end

  def offer_params
    params.require(:offer).permit(:fine_id,:user_id, :comment)
  end

end
