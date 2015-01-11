class ConcertsController < ApplicationController
    def new
      @concert = Concert.new
      @venues = Venue.all.collect {|venue| [venue.name, venue.id]}
    end

    def index
      @concerts = Concert.all
    end

    def create
      @concert = Concert.new(concert_params)
      @concert.venue_id = params["concert"]["venue_id"].to_i
      #@concert.venue_id = Venue.find_by(name: "House of Blues Boston")
      #binding.pry
      if @concert.save
        redirect_to concerts_path
      else
        render :concert
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
