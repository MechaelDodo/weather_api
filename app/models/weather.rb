class Weather < ApplicationRecord

  def self.by_time find_time
    find_by(time: Time.at(find_time).to_datetime)
  end

  def self.historical
    order(time: :desc).first(24)
  end

  def self.max
    order(time: :desc).first(24).maximum(:temperature)
  end

  def self.min
    order(time: :desc).first(24).minimum(:temperature)
  end

  def self.avg
    order(time: :desc).first(24).map(&:temperature).reduce(:+)/24
  end

  def self.current
    order(time: :desc).first(1)[0].temperature
  end

  def self.historical_save
    weather_values = self.parsing_historical_data
    weather_values.each do |day|
      find_time = day[:time].to_datetime.beginning_of_hour
      unless self.find_by(time: find_time)
        self.create!(time: find_time, temperature: day[:temperature])
      end
    end
  end

  def self.parsing_historical_data
    params = { apikey: "hdmJPTChAKG5hfY81JnWAh9mGGLukvZF" }
    response = RestClient.get "http://dataservice.accuweather.com/currentconditions/v1/28580/historical/24",
                              {params: params}
    JSON.parse(response.body).map do |day|
      {
        time: day["LocalObservationDateTime"],
        temperature: day["Temperature"]["Metric"]["Value"]
      }
    end
  end

end
