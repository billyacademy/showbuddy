require "rails_helper"

describe Rsvp do
  describe "associations" do
    it { should belong_to :user }
    it { should belong_to :concert }
  end

  describe "validations" do
    it { should validate_presence_of :user_id }
    it { should validate_presence_of :concert_id }
  end

  describe "attributes" do
    it { should respond_to :comment }
  end
end
