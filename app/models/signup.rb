class Signup < ApplicationRecord
  belongs_to :camper
  belongs_to :activity

  # validates :time, scope: { in: (0..23).to_a }
  validates :time, numericality: { 
    only_integer: true, 
    greater_than_or_equal_to: 0, 
    less_than_or_equal_to: 23, 
    message: "must be between 0 and 23"
  }
  # validates :time, inclusion: { in: 0..23 }
end
