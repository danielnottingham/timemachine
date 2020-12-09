class TimeMachine < ApplicationRecord
  validates :status, :recorded_at, :external_id, presence: true
end
