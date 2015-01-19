class ConcertsController < ApplicationController
    def new
      @concert = Concert.new
      @venues = Venue.all.collect {|venue| [venue.name, venue.id]}
    end

    def index
      if params[:query]
        @concerts = Concert.text_search(params[:query]).page(params[:page])
      else
        @concerts = Concert.all.page(params[:page])
      end
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
      @rsvps = Rsvp.where(concert_id: params[:id])
      @concert = Concert.find(params[:id])
      @rsvp = Rsvp.where(user_id: current_user.id, concert_id: params[:id])
      @new_rsvp = Rsvp.new
    end

    private

    def concert_params
      params.require(:concert).permit(:date, :time, :artist_1, :artist_2, :artist_3,
        :artist_4, :venue_id, :price, :url)
    end
end
