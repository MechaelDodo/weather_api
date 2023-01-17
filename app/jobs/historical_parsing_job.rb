class HistoricalParsingJob < ApplicationJob
  queue_as :default

  def perform(*args)
    Weather.historical_save
  end
end
