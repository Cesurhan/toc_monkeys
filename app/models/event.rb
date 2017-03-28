class Event < ApplicationRecord
  has_many :workshops
  belongs_to :sponsor
end
