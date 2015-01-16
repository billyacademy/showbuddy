class VenuesController < ApplicationController
  def index
    @venues = Venue.all
  end

  def create
    @venue = Venue.new(venue_params)
    if @venue.save
      redirect_to admin_venues_path
    else
      redirect_to new_admin_venue_path
    end
  end

  def show
    @venue = Venue.find(params[:id])
  end

  private

  def venue_params
    params.require(:venue).permit(:name, :address_line_1, :address_line_2,
    :city, :state, :zip, :website)
  end
end
