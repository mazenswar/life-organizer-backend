class Day < ApplicationRecord
  belongs_to :month
  has_many :tasks

end
