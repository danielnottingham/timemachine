class Event < ApplicationRecord
  belongs_to :time_machine
  validates :event_name, :event_date, :contact_name, :external_id, presence: true
end
