class FinesController < ApplicationController
  before_action :set_fine, only: [:show, :edit, :update, :destroy]
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
    binding.pry
    redirect_to fine_path(@fine)

    puts "dfdfdsfsdfsdf"
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

