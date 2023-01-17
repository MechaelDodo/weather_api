json.array! @weathers.each do |weather|
  json.time weather.time
  json.temperature weather.temperature
end