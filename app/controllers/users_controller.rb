class UsersController < ApplicationController

  def show
    @user=current_user
    @fines = current_user.fines
    @offers = current_user.offers
  end


end
