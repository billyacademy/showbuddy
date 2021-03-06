class RsvpsController < ApplicationController
  def new
  end

  def create
    @rsvp = Rsvp.new(rsvp_params)
    @rsvp.user = current_user
    @rsvp.concert_id = params[:concert_id]
    if @rsvp.save!
      redirect_to concert_path(params[:concert_id]), notice:
      "You have successfully RSVP'd"
    end
  end

  private

  def rsvp_params
    params.require(:rsvp).permit(:comment)
  end
end
