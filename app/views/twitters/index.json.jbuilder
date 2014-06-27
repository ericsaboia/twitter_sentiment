json.array!(@tweets) do |tweet|
  json.extract! tweet, :text
  json.sentiment @analyzer.get_sentiment tweet.text
end
