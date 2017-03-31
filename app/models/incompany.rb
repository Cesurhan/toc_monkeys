class Incompany < ApplicationRecord
  belongs_to :workshop

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :company_name, presence: true
  validates :email, presence: true
  validates :date, presence: true
  validates :spaces_available, presence: true
  validates :workshop, presence:true


end
