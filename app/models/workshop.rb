class Workshop < ApplicationRecord
  has_many :events

  validates :title, presence: true
end
