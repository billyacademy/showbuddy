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

  def self.text_search(query)
    where("artist_1 ILIKE ? OR artist_2 ILIKE ? OR artist_3 ILIKE ?
    OR artist_4 ILIKE ?", "%" + query + "%", "%" + query + "%", "%" + query + "%", "%" + query + "%")
  end
end
    # include PgSearch
    # pg_search_scope :search, against: [:artist_1, :artist_2, :artist_3, :artist_4],
    # using: {tsearch: {dictionary: "english"}},
    # associated_against: {venue: :name}


    # def self.search(query)
    #   if query.present?
    #     rank = <<-RANK
    #     ts_rank(to_tsvector(artist_1), plainto_tsquery(#{sanitize(query)})) +
    #     ts_rank(to_tsvector(artist_2), plainto_tsquery(#{sanitize(query)}))
    #     RANK
    #     where("to_tsvector('english', artist_1) @@ :q
    #     or to_tsvector('english', artist_2) @@ :q or
    #     to_tsvector('english', artist_3) @@ :q or
    #     to_tsvector('english', artist_4) @@ :q", q: query).order("#{rank} desc")
    #   else
    #     scoped
    #   end
    # end

  # def self.text_search(query)
  #   rank = <<-RANK
  #   ts_rank(to_tsvector(artist_1), plainto_tsquery(#{sanitize(query)})) +
  #   ts_rank(to_tsvector(artist_2), plainto_tsquery(#{sanitize(query)}))
  #   RANK
  #   where("to_tsvector('english', artist_1) @@ :q or to_tsvector('english', artist_2) @@ :q", q: query).order("#{rank} desc")
  # end

#     def self.text_search(query)
#       where("plainto_tsquery(?) @@ " +
#       "to_tsvector('english', artist_1)", query)
#     end
# end
