# frozen_string_literal: true

require 'rails_helper'

RSpec.describe School, type: :model do
  describe 'associations' do
    it { should have_many(:users) }
    it { should have_many(:donations) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:account_number) }
  end
end

