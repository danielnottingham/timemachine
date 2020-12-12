FactoryBot.define do
  factory :time_machine do
    status { 'syncing' }
    recorded_at { '2019-06-24' }
    external_id { '1' }
  end
end
