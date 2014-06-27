json.array!(@tweets) do |tweet|
  json.extract! tweet, :text
end
