require 'rails_helper'

RSpec.describe Event, type: :model do
  describe 'associations' do
    it { should belong_to(:movie) }
    it { should have_many(:seats) }
  end
  describe 'validations' do
    it { should validate_presence_of(:movie_id) }
    it { should validate_presence_of(:date) }
    it { should validate_presence_of(:time_start) }
    it { should validate_presence_of(:time_end) }
    it { should validate_presence_of(:capacity) }
    it { should validate_presence_of(:hall) }
  end
end
