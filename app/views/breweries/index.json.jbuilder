json.array!(@all_breweries) do |brewery|
  json.extract! brewery, :name, :year
  #byebug
  json.beers do
  	json.count brewery.beers.count
  end
  #json.url brewery_url(brewery, format: :json)
end
