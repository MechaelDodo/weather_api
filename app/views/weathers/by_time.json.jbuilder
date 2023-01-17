if @weather.nil?
  json.text  "404 Not found"
else
  json.time @weather.time
  json.temperature @weather.temperature
end

