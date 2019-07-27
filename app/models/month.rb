class Month < ApplicationRecord
  belongs_to :year
  has_many :days
  has_many :tasks, through: :days
end
