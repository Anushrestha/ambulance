    class AmbulancelocationsController < ApplicationController
      before_action :set_ambulancelocation, only: [:show, :edit, :update, :destroy]
      
      # GET /ambulancelocations
      # GET /ambulancelocations.json
      def index
        @ambulancelocations = Ambulancelocation.all
        @hash = Gmaps4rails.build_markers(@ambulancelocations) do |ambulancelocation, marker|
        marker.lat ambulancelocation.latitude
        marker.lng ambulancelocation.longitude
      end

      end

      def currentlocation
        @ambulancelocations = cookies["latitude"],cookies["longitude"]
        @hash = Gmaps4rails.build_markers(@ambulancelocations) do |ambulancelocation, marker|
      marker.lat cookies["latitude"]
      marker.lng cookies["longitude"]
         end
      end
      
      def nearby
        @ambulancecookies = cookies["latitude"],cookies["longitude"]
          @hash = Gmaps4rails.build_markers(@ambulancecookies) do |ambulancecookie, marker|
        marker.lat cookies["latitude"]
        marker.lng cookies["longitude"]
        
       end
          @ambulancelocations = Ambulancelocation.near([cookies["latitude"], cookies["longitude"]], 20)
          @h = Gmaps4rails.build_markers(@ambulancelocations) do |ambulancelocation, marker|
        marker.lat ambulancelocation.latitude
        marker.lng ambulancelocation.longitude
        marker.picture({
                      :url    => "images/background1.jpg",
                      :width  => "20",
                      :height => "20",
                      :scaledWidth => "64", # Scaled width is half of the retina resolution; optional
                       :scaledHeight => "64", # Scaled width is half of the retina resolution; optional
                     })
        marker.infowindow ambulancelocation.address
      end
      end

      # GET /ambulancelocations/1
      # GET /ambulancelocations/1.json
      def show
      end

      # GET /ambulancelocations/new
      def new
        @ambulancelocation = Ambulancelocation.new
      end

      # welcome page
      def welcome

      end

      # GET /ambulancelocations/1/edit
      def edit
      end
      # POST /ambulancelocations
      # POST /ambulancelocations.json
      def create
        @ambulancelocation = Ambulancelocation.new(ambulancelocation_params)

        respond_to do |format|
          if @ambulancelocation.save
            format.html { redirect_to @ambulancelocation, notice: 'Ambulancelocation was successfully created.' }
            format.json { render :show, status: :created, location: @ambulancelocation }
          else
            format.html { render :new }
            format.json { render json: @ambulancelocation.errors, status: :unprocessable_entity }
          end
        end
      end

      # PATCH/PUT /ambulancelocations/1
      # PATCH/PUT /ambulancelocations/1.json
      def update
        respond_to do |format|
          if @ambulancelocation.update(ambulancelocation_params)
            format.html { redirect_to @ambulancelocation, notice: 'Ambulancelocation was successfully updated.' }
            format.json { render :show, status: :ok, location: @ambulancelocation }
          else
            format.html { render :edit }
            format.json { render json: @ambulancelocation.errors, status: :unprocessable_entity }
          end
        end
      end

      # DELETE /ambulancelocations/1
      # DELETE /ambulancelocations/1.json
      def destroy
        @ambulancelocation.destroy
        respond_to do |format|
          format.html { redirect_to ambulancelocations_url, notice: 'Ambulancelocation was successfully destroyed.' }
          format.json { head :no_content }
        end
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_ambulancelocation
          @ambulancelocation = Ambulancelocation.find(params[:id])
        end

        # Never trust parameters from the scary internet, only allow the white list through.
        def ambulancelocation_params
          params.require(:ambulancelocation).permit(:latitude, :longitude, :address)
        end
    end
