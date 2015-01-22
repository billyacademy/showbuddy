module UserHelper
  def sender_name(sender_id)
    User.find(sender_id).name
  end

  def receiver_name(receiver_id)
    User.find(receiver_id).name
  end

  def concert_headliner(concert_id)
    Concert.find(concert_id).artist_1
  end
end
