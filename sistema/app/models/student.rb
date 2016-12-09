class Student < ApplicationRecord
    
  has_many :has_groups
  has_many :groups, :through => :has_groups
end
