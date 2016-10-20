class FinesController < ApplicationController
  before_filter :login_required
  before_action :set_fine, only: [:show, :edit, :update, :destroy]
  def new
    @fine = Fine.new
    @user=User.new
  end

  def create

    @fine = current_user.fines.new(fine_params)
    respond_to do |format|
      if @fine.save


        format.html { redirect_to fine_path(@fine), notice: 'Fine was successfully created.' }
        format.json { render :show, status: :created, location: @fines }
      else
        p @fine.errors
        format.html { render :new }
        format.json { render json: @fine.errors, status: :unprocessable_entity }
      end
    end
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
    params.require(:fine).permit(:last_name,:first_name,:reason,:point,:fine_deadline,:fine_offer,:comment,:price,:point)
  end

end


