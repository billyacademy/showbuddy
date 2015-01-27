class VenuesController < ApplicationController
  def index
    @venues = Venue.all.page(params[:page])
  end

  def show
    @venue = Venue.find(params[:id])
    @concerts = Concert.where(venue_id: params[:id])
    @next_concert = @concerts.order('date').first
  end
end
