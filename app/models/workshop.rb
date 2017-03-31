class Workshop < ApplicationRecord
  has_many :events
  has_many :companies
end
