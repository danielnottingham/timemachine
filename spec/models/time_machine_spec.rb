require 'rails_helper'

RSpec.describe TimeMachine, type: :model do
  context "validates presences" do
    it { should validate_presence_of(:status) }
    it { should validate_presence_of(:recorded_at) }
    it { should validate_presence_of(:external_id) }
  end
  
end
