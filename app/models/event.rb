class Event < ApplicationRecord
  has_one :workshop
  belongs_to :sponsor
end
