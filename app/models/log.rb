class Log < ApplicationRecord
  belongs_to :task

  before_create :decide_if_reward_given

  # 20% chance of getting reward.
  #`rand` returns random number between 0 and 1
  def decide_if_reward_given
    if rand < 0.2
      self.gave_reward = true
    end
  end
end
