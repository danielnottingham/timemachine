FactoryBot.define do
  factory :event do
    external_id { 1 }
    event_name { "event_name_string" }
    event_date { "2020-12-13" }
    contact_name { "event_contact_string" }
    association :time_machine, factory: :time_machine
  end
end
