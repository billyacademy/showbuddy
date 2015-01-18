class Concert < ActiveRecord::Base
  paginates_per 10
  belongs_to :venue
  has_many :rsvps, dependent: :destroy


  validates :artist_1,
    presence: true

  validates :date,
    presence: true

  validates :time,
    presence: true,
    inclusion: { in: ["12pm", "1pm", "2pm", "3pm", "4pm", "5pm", "6pm", "7pm",
      "8pm", "9pm", "10pm", "11pm", "Midnight"] }

  validates :venue_id,
    presence: true

  validates :url,
    presence: true

  def self.text_search(query)
    where("artist_1 ILIKE ? OR artist_2 ILIKE ? OR artist_3 ILIKE ?
      OR artist_4 ILIKE ?", "%" + query + "%", "%" + query + "%",
      "%" + query + "%", "%" + query + "%")
  end
end
