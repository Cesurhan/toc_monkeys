class Event < ApplicationRecord
  belongs_to :workshop, optional: true
  belongs_to :sponsor

  validates :title, presence: true
  validates :location, presence: true
  validates :spaces_available, presence:true


  def self.public_events
    self.select { |event| event.status }
  end

  def self.incompany_events
    self.select { |event| !event.status }
  end

end
