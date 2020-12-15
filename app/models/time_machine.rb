class TimeMachine < ApplicationRecord
  validates :status, :recorded_at, :external_id, presence: true
  has_many :events, dependent: :destroy
end
