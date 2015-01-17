class Concert < ActiveRecord::Base
  belongs_to :venue
  has_many :rsvps, dependent: :destroy

  validates :artist_1,
    presence: true

  validates :date,
    presence: true

    validates :time,
    presence: true,
    inclusion: { in: ["12pm", "1pm", "2pm", "3pm", "4pm", "5pm", "6pm", "7pm", "8pm", "9pm", "10pm", "11pm", "Midnight"] }

    validates :venue_id,
    presence: true

    validates :url,
    presence: true

    def self.search(query)
      where("plainto_tsquery(?) @@ " +
      "to_tsvector('english', artist_1 || ' ' || artist_2)",
      query)
    end
end
