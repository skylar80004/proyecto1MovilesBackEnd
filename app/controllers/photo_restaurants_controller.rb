class PhotoRestaurantsController < ApplicationController
  before_action :set_photo_restaurant, only: [:show, :edit, :update, :destroy]

  # GET /photo_restaurants
  # GET /photo_restaurants.json
  def index
    @photo_restaurants = PhotoRestaurant.all
  end

  # GET /photo_restaurants/1
  # GET /photo_restaurants/1.json
  def show
  end

  # GET /photo_restaurants/new
  def new
    @photo_restaurant = PhotoRestaurant.new
  end

  # GET /photo_restaurants/1/edit
  def edit
  end

  # POST /photo_restaurants
  # POST /photo_restaurants.json
  def create
    @photo_restaurant = PhotoRestaurant.new(photo_restaurant_params)

    respond_to do |format|
      if @photo_restaurant.save
        format.html { redirect_to @photo_restaurant, notice: 'Photo restaurant was successfully created.' }
        format.json { render :show, status: :created, location: @photo_restaurant }
      else
        format.html { render :new }
        format.json { render json: @photo_restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /photo_restaurants/1
  # PATCH/PUT /photo_restaurants/1.json
  def update
    respond_to do |format|
      if @photo_restaurant.update(photo_restaurant_params)
        format.html { redirect_to @photo_restaurant, notice: 'Photo restaurant was successfully updated.' }
        format.json { render :show, status: :ok, location: @photo_restaurant }
      else
        format.html { render :edit }
        format.json { render json: @photo_restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photo_restaurants/1
  # DELETE /photo_restaurants/1.json
  def destroy
    @photo_restaurant.destroy
    respond_to do |format|
      format.html { redirect_to photo_restaurants_url, notice: 'Photo restaurant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photo_restaurant
      @photo_restaurant = PhotoRestaurant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def photo_restaurant_params
      params.require(:photo_restaurant).permit(:image_url, :restaurant_id)
    end
end
