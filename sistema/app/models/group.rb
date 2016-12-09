class Group < ApplicationRecord
  belongs_to :grade
  belongs_to :period
  
  has_many :has_groups
  has_many :students, through: :has_groups
end
