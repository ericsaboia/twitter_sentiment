require 'rails_helper'

RSpec.describe DateHelper, :type => :helper do
  
  describe "#distance_of_time_in_words_or_absolute" do
    describe "when date is less then two days ago" do
      it "displays in words" do
        expect(helper.distance_of_time_in_words_or_absolute(4.hours.ago)).to match /about 4 hours/
      end
    end

    describe "when date is more then two days ago" do
      it "displays in words" do
        expect(helper.distance_of_time_in_words_or_absolute(Time.new(2012,01,12))).to match /Jan 12, 2012/
      end
    end
  end

end