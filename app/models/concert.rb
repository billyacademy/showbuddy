class Concert < ActiveRecord::Base
  belongs_to :venue

  validates :artist_1,
    presence: true

  validates :date,
    presence: true

    validates :time,
    presence: true

    validates :venue_id,
    presence: true

    validates :url,
    presence: true


end
