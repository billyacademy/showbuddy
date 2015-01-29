module MatchHelper
  def match_sender_id_current_user(rsvp)
    Match.find_by(sender_id: current_user.id, concert_id: params[:id], receiver_id: rsvp.user.id)
  end

  def match_receiver_id_current_user(rsvp)
    Match.find_by(sender_id: rsvp.user.id, concert_id: params[:id], receiver_id: current_user.id)
  end
end
