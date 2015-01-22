class Rsvp < ActiveRecord::Base
  belongs_to :user
  belongs_to :concert

  validates :user_id,
    presence: true

  validates :concert_id,
    presence: true
end
