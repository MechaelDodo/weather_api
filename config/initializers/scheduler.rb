# frozen_string_literal: true
scheduler = Rufus::Scheduler.singleton

scheduler.interval '1h', first: 0.4   do
  HistoricalParsingJob.perform_now
end
