class Event < ApplicationRecord
  belongs_to :workshop
  belongs_to :sponsor

  def self.public_events
    debugger
    events = self.select { |event| !event.status }
    debugger
    events
  end

  def self.incompany_events
    events = self.select { |event| !event.status }
    events
  end

end
