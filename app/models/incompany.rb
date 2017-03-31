class Incompany < ApplicationRecord
  has_one :workshop

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :company_name, presence: true
  validates :email, presence: true
  validates :date, presence: true
  validates :spaces_available, presence: true
  validates :wordshop, presence:true


end
