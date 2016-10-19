  class UsersController < ApplicationController

  def show
    @fines = current_user.fines
    @offers = current_user.offers
  end

end
