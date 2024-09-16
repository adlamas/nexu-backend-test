require 'rails_helper'

RSpec.describe 'GET /models', type: :request do
  let!(:models) { create_list(:car_model, 3) }

  before do
    get '/models'
  end

  it 'returns all car models' do
    expect(json_response.pluck(:id)).to eq(models.pluck(:id))
  end
end
