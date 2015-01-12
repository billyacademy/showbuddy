class ConcertsController < ApplicationController
    def new
      @concert = Concert.new
      @venues = Venue.all.collect {|venue| [venue.name, venue.id]}
    end

    def index
      @concerts = Concert.all
    end

    def create
      @venues = Venue.all.collect {|venue| [venue.name, venue.id]}
      @concert = Concert.new(concert_params)
      @concert.venue_id = params["concert"]["venue_id"].to_i
      if @concert.save
        redirect_to concerts_path
      else
        render :new
      end
    end

    def show
      @concert = Concert.find(params[:id])
    end

    private

    def concert_params
      params.require(:concert).permit(:date, :time, :artist_1, :artist_2, :artist_3,
        :artist_4, :venue_id, :price, :url)
    end
end
