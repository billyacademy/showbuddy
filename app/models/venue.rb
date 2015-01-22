class Venue < ActiveRecord::Base
  paginates_per 10
  has_many :concerts, dependent: :destroy
  nilify_blanks

  validates :name,
    presence: :true,
    uniqueness: true

  validates :address_line_1,
    presence: :true

  validates :city,
    presence: :true

  validates :state,
    presence: :true,
    inclusion: { in: %w(AL AK AZ AR CA CO CT DE FL GA HI ID IL
    IN IA KS KY LA ME MD MA MI MN MS MO MT NE NV NH NJ NM NY NC ND OH OK OR PA
    RI SC SD TN TX UT VT VA WA WV WI WY), message: "Please enter the correct two
    character state identifier"}

  validates :zip,
    presence: :true,
    numericality: true,
    length: { is: 5 }

  validates :website,
    presence: :true
end
