require "rails_helper"

describe User do
  describe "validations" do
    it { should validate_presence_of :uid }
    it { should validate_presence_of :provider }
    it { should validate_presence_of :name }
  end

  describe "associations" do
    it { should have_many :rsvps }
    #it { should have_many :matches }
  end
end
