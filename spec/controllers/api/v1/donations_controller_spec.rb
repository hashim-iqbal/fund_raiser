require 'rails_helper'

RSpec.describe Api::V1::DonationsController, type: :controller do
  describe 'POST invite' do
    let(:payload) {
      2.times.map{ Faker::Internet.email }
    }
    context 'when user is not authenticated' do
      it 'returns unauthorized error' do
        post :invite, params: { emails: payload }

        expect(response.status).to eq(401)
      end
    end

    context 'when user is authorized' do
      let(:user) { create(:user, :with_password, :student) }
      let(:auth_headers) { user.create_new_auth_token }
      before do
        request.headers.merge(auth_headers)
      end

      it 'returns success response' do
        post :invite, params: { emails: payload }

        expect(response.status).to eq(200)
        expect(response.parsed_body['message']).to eq('Your invites has been submitted successfully')
      end
    end
  end

  describe 'POST create' do
    context 'when params are missing' do
      it 'receives missing params error' do
        post :create

        expect(response.status).to eq(422)
        expect(response.parsed_body['message']).to include('param is missing')
      end
    end

    context 'when params are correct' do
      let(:school) { create(:school) }
      let(:payload) { { amount: Faker::Number.number(digits: 3),
                        email: Faker::Internet.email,
                        account_number: school.account_number
                      } }
      it 'receive created donation' do
        post :create, params: payload

        expect(response.parsed_body).to eq(Donation.first.as_json)
      end
    end
  end
end
