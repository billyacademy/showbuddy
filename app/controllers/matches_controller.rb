class MatchesController < ApplicationController
  def new
    @match = Match.new
  end

  def create
    @match = Match.new
    @match.sender_id = current_user.id
    @match.receiver_id = params[:format]
    @match.concert_id = params[:concert_id]
    @recipient_user = User.find(@match.receiver_id)
    if @match.save
      flash[:notice] = "A request to buddy up has been sent to #{@recipient_user.name}"
      redirect_to concert_path(params[:concert_id])
    end
  end

  def update
    
  end
  private
end
