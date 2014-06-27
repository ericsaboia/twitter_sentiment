require 'rails_helper'

RSpec.describe DateHelper, :type => :helper do
  
  describe "#distance_of_time_in_words_or_absolute" do
    describe "when date is less then two days ago" do
      it "displays in words" do
        datetime = Time.now - 4.hours
        expect(helper.distance_of_time_in_words_or_absolute).to match /about 4 hours ago/
      end
    end

    describe "when date is exacly two days ago"  do
      it "displays in words" do
        datetime = Time.now - 2.days
        expect(helper.distance_of_time_in_words_or_absolute).to match /about 2 days ago/
      end
    end

    describe "when date is more then two days ago" do
      it "displays in words" do
        datetime = Time.new(2012,01,12)
        expect(helper.distance_of_time_in_words_or_absolute).to match /Jan 12, 2012/
      end
    end
  end

end