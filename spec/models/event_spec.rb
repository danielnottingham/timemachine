require 'rails_helper'

RSpec.describe Event, type: :model do
  context 'validates presences' do
    it { should validate_presence_of(:event_name) }
    it { should validate_presence_of(:event_date) }
    it { should validate_presence_of(:contact_name) }
    it { should validate_presence_of(:external_id) }
  end

  context 'Association test' do
    it { should belong_to(:time_machine) }
  end
  
end
