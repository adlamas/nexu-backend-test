require 'rails_helper'

RSpec.describe 'GET /models/:id', type: :request do
  let!(:model) { create(:car_model) }

  context 'when sending correct params when updating' do
    before do
      put "/models/#{model.id}", params: { average_price: 101_000 }
    end

    it 'returns the model updated' do
      expect(json_response[:average_price]).to eq(101_000)
    end
  end

  context 'when sending incorrect params when updating' do
    before do
      put "/models/#{model.id}", params: { average_price: 100 }
    end

    it 'returns the correct error' do
      expect(json_response[:errors]).to eq('Validation failed: Average price must be greater than 100000')
    end
  end
end
