require 'rails_helper'

RSpec.describe Weather, type: :model do
  context 'Checking of model Weather' do

    it 'method avg' do
      i = FactoryBot.create(:weather).temperature
      (1..23).each { i += FactoryBot.create(:weather).temperature }
      avg_temperature = i/24
      expect(Weather.avg).to eq(avg_temperature)
    end

    it 'method max and min' do
      weather_min = FactoryBot.create(:weather)
      FactoryBot.create(:weather)
      weather_max = FactoryBot.create(:weather)
      expect(Weather.max).to eq(weather_max.temperature)
      expect(Weather.min).to eq(weather_min.temperature)
    end

    it 'method by_time' do
      weather = FactoryBot.create(:weather, time: Time.at(1621823790).to_datetime)
      expect(Weather.by_time(1621823790)).to eq(weather)
    end

  end
end
