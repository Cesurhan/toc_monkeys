class Event < ApplicationRecord
  belongs_to :workshop
  belongs_to :sponsor

  def self.public_events
    self.select { |event| event.status }
  end

  def self.incompany_events
    self.select { |event| !event.status }
  end

end
