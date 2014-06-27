module DateHelper
  def distance_of_time_in_words_or_absolute(date)
    date <= 2.days.ago ? date.strftime("%b %d, %Y") : time_ago_in_words(date)
  end
end