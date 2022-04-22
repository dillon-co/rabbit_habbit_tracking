class Task < ApplicationRecord
  has_many :logs

  enum time_of_day: {
    morning: 0,
    afternoon: 1,
    evening: 2,
    any: 3
  }

  enum frequency: {
    daily: 0,
    semi_weekly: 1,
    weekly: 2,
    semi_monthly: 3,
    monthly: 4
  }
end
