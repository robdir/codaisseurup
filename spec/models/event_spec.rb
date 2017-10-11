require 'rails_helper'

RSpec.describe Event, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_length_of(:description).is_at_most(500) }
  end


#creating event instances and setting to various prices to check the bargain? meth
  describe "#bargain?" do
    let(:bargain_event) { create :event, price: 20}
    let(:non_bargain_event) { create :event, price: 300}

    it "returns true if the price is less than 30" do
      expect(bargain_event.bargain?).to eq(true)
      expect(non_bargain_event.bargain?).to eq(false)
    end
    end

    describe ".order_by_price" do
      let!(:event1) { create :event, price: 100 }
      let!(:event2) { create :event, price: 200 }
      let!(:event3) { create :event, price: 50 }

      it "returns a sorted array of events by prices" do
        # note that they should not come out in the order that they were created
        expect(Event.order_by_price).to eq([event3, event1, event2])
      end
    end

    it { is_expected.to belong_to :user}


  #   describe "association with user" do
  # let(:user) { create :user }
  #
  # it "belongs to a user" do
  #   event = user.events.build(home_type: "Shared")
  #
  #   expect(event.user).to eq(user)
  # end
  end
