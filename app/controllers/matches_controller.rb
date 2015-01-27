class MatchesController < ApplicationController
  def new
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
    @match = Match.find(params[:id])
    if @match.update(status: params[:status]) && @match.status == "confirmed"
      flash[:notice] = "You have accepted the request to go to the show!"
      redirect_to user_path(current_user)
    elsif @match.update(status: params[:status]) && @match.status == "declined"
      flash[:notice] = "You have declined the request to go to the show!"
      redirect_to user_path(current_user)
    end
  end
end
