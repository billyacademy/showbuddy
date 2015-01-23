require "rails_helper"

describe Concert do
  describe "attributes" do
    it { should respond_to :artist_1 }
    it { should respond_to :date }
    it { should respond_to :time }
    it { should respond_to :artist_2 }
    it { should respond_to :artist_3 }
    it { should respond_to :artist_4 }
    it { should respond_to :venue_id }
    it { should respond_to :url }
    it { should respond_to :created_at }
    it { should respond_to :updated_at }
  end
  describe "validations" do
    it { should validate_presence_of :artist_1 }
    it { should validate_presence_of :date }
    it { should validate_presence_of :venue_id }
    it { should validate_presence_of :url }
    it { should validate_presence_of :time }
    it {should validate_inclusion_of(:time).in_array(["12pm", "1pm", "2pm", "3pm", "4pm", "5pm", "6pm", "7pm",
      "8pm", "9pm", "10pm", "11pm", "Midnight"]) }
  end

  describe "associations" do
    it { should have_many :rsvps }
    it { should belong_to :venue }
  end
end
