class VenuesController < ApplicationController
  def index
    @venues = Venue.all
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
