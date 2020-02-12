require 'rails_helper'

RSpec.describe Movie, type: :model do
  describe 'associations' do
    it { should have_many(:events) }
  end
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:duration) }
    it { should validate_presence_of(:synopsis) }
    it { should validate_presence_of(:genre) }
    it { should validate_presence_of(:trailer) }
    it { should validate_presence_of(:image) }
    it { should validate_presence_of(:big_image) }
  end
end
