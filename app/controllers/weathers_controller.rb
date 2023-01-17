class WeathersController < ApplicationController
  def historical
    @weathers = Weather.historical
  end

  def max
    @max_temperature = Weather.max
  end

  def min
    @min_temperature = Weather.min
  end

  def avg
    @avg_temperature = Weather.avg
  end

  def current
    @current_temperature = Weather.current
  end

  def by_time
    @weather = Weather.by_time(params[:timestamp].to_i)
    render :by_time, :status => 404 if @weather.nil?
  end

  def health
    render :health, :status => 200
  end

end
