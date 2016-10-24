class ProductrailsController < ApplicationController
  before_action :set_productrail, only: [:show, :edit, :update, :destroy]

  # GET /productrails
  # GET /productrails.json
  def index
    @productrails = Productrail.all
  end

  # GET /productrails/1
  # GET /productrails/1.json
  def show
  end

  # GET /productrails/new
  def new
    @productrail = Productrail.new
  end

  # GET /productrails/1/edit
  def edit
  end

  # POST /productrails
  # POST /productrails.json
  def create
    @productrail = Productrail.new(productrail_params)

    respond_to do |format|
      if @productrail.save
        format.html { redirect_to @productrail, notice: 'Productrail was successfully created.' }
        format.json { render :show, status: :created, location: @productrail }
      else
        format.html { render :new }
        format.json { render json: @productrail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /productrails/1
  # PATCH/PUT /productrails/1.json
  def update
    respond_to do |format|
      if @productrail.update(productrail_params)
        format.html { redirect_to @productrail, notice: 'Productrail was successfully updated.' }
        format.json { render :show, status: :ok, location: @productrail }
      else
        format.html { render :edit }
        format.json { render json: @productrail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /productrails/1
  # DELETE /productrails/1.json
  def destroy
    @productrail.destroy
    respond_to do |format|
      format.html { redirect_to productrails_url, notice: 'Productrail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_productrail
      @productrail = Productrail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def productrail_params
      params.require(:productrail).permit(:g, :scription)
    end
end
