class FinesController < ApplicationController
  def new
    @fine = Fine.new
    @user=User.new
  end

  def create
  end

  def index
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_fine
    @fine = Fine.find(params[:id])
  end

  def fine_params
    params.require(:fine).permit(:lastname, :price)
  end

end

