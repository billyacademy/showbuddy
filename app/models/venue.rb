class Venue < ActiveRecord::Base
  has_many :concerts

  validates :name,
    presence: :true

  validates :address_line_1,
    presence: :true

  validates :city,
    presence: :true

  validates :state,
    presence: :true

  validates :zip,
    presence: :true

  validates :website,
    presence: :true
end
