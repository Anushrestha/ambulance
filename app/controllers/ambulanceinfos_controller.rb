class AmbulanceinfosController < ApplicationController
  before_action :set_ambulanceinfo, only: [:show, :edit, :update, :destroy]

  # GET /ambulanceinfos
  # GET /ambulanceinfos.json
  def index
    @ambulanceinfos = Ambulanceinfo.all
  end

  # GET /ambulanceinfos/1
  # GET /ambulanceinfos/1.json
  def show
  end

  # GET /ambulanceinfos/new
  def new
    @ambulanceinfo = Ambulanceinfo.new
  end

  # GET /ambulanceinfos/1/edit
  def edit
  end

  # POST /ambulanceinfos
  # POST /ambulanceinfos.json
  def create
    @ambulanceinfo = Ambulanceinfo.new(ambulanceinfo_params)

    respond_to do |format|
      if @ambulanceinfo.save
        format.html { redirect_to @ambulanceinfo, notice: 'Ambulanceinfo was successfully created.' }
        format.json { render :show, status: :created, location: @ambulanceinfo }
      else
        format.html { render :new }
        format.json { render json: @ambulanceinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ambulanceinfos/1
  # PATCH/PUT /ambulanceinfos/1.json
  def update
    respond_to do |format|
      if @ambulanceinfo.update(ambulanceinfo_params)
        format.html { redirect_to @ambulanceinfo, notice: 'Ambulanceinfo was successfully updated.' }
        format.json { render :show, status: :ok, location: @ambulanceinfo }
      else
        format.html { render :edit }
        format.json { render json: @ambulanceinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ambulanceinfos/1
  # DELETE /ambulanceinfos/1.json
  def destroy
    @ambulanceinfo.destroy
    respond_to do |format|
      format.html { redirect_to ambulanceinfos_url, notice: 'Ambulanceinfo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ambulanceinfo
      @ambulanceinfo = Ambulanceinfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ambulanceinfo_params
      params.require(:ambulanceinfo).permit(:name, :contact1, :contact2, :organization_name)
    end
end
