require 'rails_helper'

RSpec.describe Api::V1::SchoolsController, type: :controller do
  describe 'Get index' do
    context 'when get schools list' do
      let!(:school) { create(:school) }

      it "returns school's name and id" do
        get :index

        expect(response.status).to eq(200)
        expect(response.parsed_body.pluck('id')).to include(school.id)
        expect(response.parsed_body.pluck('name')).to include(school.name)
      end
    end
  end
end

