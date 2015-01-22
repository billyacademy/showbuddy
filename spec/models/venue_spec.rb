require "rails_helper"

describe Venue do
  describe "attributes" do
    it { should respond_to :name }
    it { should respond_to :address_line_1 }
    it { should respond_to :city }
    it { should respond_to :state }
    it { should respond_to :zip }
    it { should respond_to :website }
    it { should respond_to :address_line_2 }
  end
  describe "validations" do
    it { should validate_presence_of :name }
    it { should validate_presence_of :address_line_1 }
    it { should validate_presence_of :state }
    it {should validate_inclusion_of(:state).in_array(%w(AL AK AZ AR CA CO CT DE FL GA HI ID IL
      IN IA KS KY LA ME MD MA MI MN MS MO MT NE NV NH NJ NM NY NC ND OH OK OR PA
      RI SC SD TN TX UT VT VA WA WV WI WY)) }
    it { should validate_presence_of :zip }
    it { should validate_numericality_of :zip }
    it { should ensure_length_of(:zip).is_equal_to(5) }
    it { should validate_presence_of :website }
    end

    describe "associations" do
      it { should have_many :concerts }
    end
  end
