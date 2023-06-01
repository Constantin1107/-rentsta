class ListingsController < ApplicationController
  def index
    map
    if params[:search]&.[](:query).present?
      @listings = Listing.search_by_name_and_address(params[:search][:query])
    else
      @listings = Listing.all
    end
  end

  def show
    @listing = Listing.find(params[:id])
    @marker = @listing.geocode.map do
      {
        lat: @listing.latitude,
        lng: @listing.longitude
      }
    end
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    @listing.user_id = current_user.id
    @listing.save
    redirect_to listing_path(@listing.id)
  end

  def edit
    @listing = Listing.find(params[:id])
  end

  def update
    @listing = Listing.find(params[:id])
    @listing.update(listing_params)
    redirect_to listing_path(@listing)
  end

  def destroy
    @listing = Listing.find(params[:id])
    @listing.destroy
    redirect_to listings_path
  end

  private

  def map
    @listings = Listing.all
    @markers = @listings.geocoded.map do |listing|
      {
        lat: listing.latitude,
        lng: listing.longitude
      }
    end
  end

  def listing_params
    params.require(:listing).permit(:name, :address, :user_id, :price, :description, :capacity, photos: [])
  end
end
