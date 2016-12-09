class Score < ApplicationRecord
  belongs_to :subject
  belongs_to :bimester
  belongs_to :student
end
