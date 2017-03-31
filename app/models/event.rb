class Event < ApplicationRecord
  belongs_to :workshop, optional: true
  belongs_to :sponsor

  validates :title, presence: true, length: { maximum: 30 }
  validates :location, presence: true
  validates :spaces_available, numericality: { only_integer: true, greater_than: 0 }

  def self.public_events
    self.select { |event| event.status }
  end

  def self.incompany_events
    self.select { |event| !event.status }
  end

end
