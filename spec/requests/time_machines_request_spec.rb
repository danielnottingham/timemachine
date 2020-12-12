require 'rails_helper'

RSpec.describe 'TimeMachines API', type: :request do
  describe 'POST /time_machines' do
    context 'when the request is valid' do
      let!(:valid_attributes) { { external_id: '1', status: 'syncing', recorded_at: '2019-06-24' } }

      before { post '/time_machines', params: valid_attributes }

      it 'verify json' do
        expect(json['external_id']).to eq(1)
        expect(json['status']).to eq('syncing')
        expect(json['recorded_at']).to eq('2019-06-24')
        expect(json['id']).to_not be_nil
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when create fails' do
      let!(:attributes) { { external_id: '2', status: nil, recorded_at: '2019-06-24' } }
      before { post '/time_machines', params: attributes }

      it 'returns a validation unprocessable entity' do
        expect(response).to have_http_status 422
      end

      it 'returns a validation failure message' do
        expect(response.body).to match(/Validation failed: Status can't be blank/)
      end
    end

  end
end
