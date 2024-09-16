require 'rails_helper'

RSpec.describe CarModel, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:brand) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
  end
end
