if @weather.nil?
  render :text => "404 Not found", :status => 404
else
  json.time @weather.time
  json.temperature @weather.temperature
end

