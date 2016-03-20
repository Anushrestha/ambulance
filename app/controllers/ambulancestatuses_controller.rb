class AmbulancestatusesController < ApplicationController
  before_action :set_ambulancestatus, only: [:show, :edit, :update, :destroy]

  # GET /ambulancestatuses
  # GET /ambulancestatuses.json
  def index
    @ambulancestatuses = Ambulancestatus.all
  end

  # GET /ambulancestatuses/1
  # GET /ambulancestatuses/1.json
  def show
  end

  # GET /ambulancestatuses/new
  def new
    @ambulancestatus = Ambulancestatus.new
  end

  # GET /ambulancestatuses/1/edit
  def edit
  end

  # POST /ambulancestatuses
  # POST /ambulancestatuses.json
  def create
    @ambulancestatus = Ambulancestatus.new(ambulancestatus_params)

    respond_to do |format|
      if @ambulancestatus.save
        format.html { redirect_to @ambulancestatus, notice: 'Ambulancestatus was successfully created.' }
        format.json { render :show, status: :created, location: @ambulancestatus }
      else
        format.html { render :new }
        format.json { render json: @ambulancestatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ambulancestatuses/1
  # PATCH/PUT /ambulancestatuses/1.json
  def update
    respond_to do |format|
      if @ambulancestatus.update(ambulancestatus_params)
        format.html { redirect_to @ambulancestatus, notice: 'Ambulancestatus was successfully updated.' }
        format.json { render :show, status: :ok, location: @ambulancestatus }
      else
        format.html { render :edit }
        format.json { render json: @ambulancestatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ambulancestatuses/1
  # DELETE /ambulancestatuses/1.json
  def destroy
    @ambulancestatus.destroy
    respond_to do |format|
      format.html { redirect_to ambulancestatuses_url, notice: 'Ambulancestatus was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ambulancestatus
      @ambulancestatus = Ambulancestatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ambulancestatus_params
      params.require(:ambulancestatus).permit(:status)
    end
end
