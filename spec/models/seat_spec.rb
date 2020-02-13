require 'rails_helper'

RSpec.describe Seat, type: :model do
  describe 'associations' do
    it { should belong_to(:event) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:event_id) }
    it { should validate_presence_of(:price) }
    it { should validate_presence_of(:status) }
  end
end
