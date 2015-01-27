class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @pending_invites = Match.where(sender_id: current_user, status: "pending")
    @waiting_for_responses = Match.where(receiver_id: current_user, status:
    "pending")
    @confirmed_matches = Match.where(
    "(receiver_id = #{current_user.id} or sender_id = #{current_user.id})
    and status = 'confirmed'")
    @rejections = Match.where(
    "(sender_id = #{current_user.id} or receiver_id = #{current_user.id})
    and status = 'declined'")
  end
end
