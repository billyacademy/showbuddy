require "rails_helper"

describe Match do
  describe "associations" do
    #it { should have_and_belong_to_many :senders }
    it { should belong_to :concert }
  end
end
