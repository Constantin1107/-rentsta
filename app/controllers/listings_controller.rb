class ListingsController < ApplicationController
  def index
    @listings = Listing.all
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.create(listing_params)
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

  private

  def listing_params
    params.require(:listings).permit(:name, :address, :owner_id, :price, :description, :capacity)
  end
end
