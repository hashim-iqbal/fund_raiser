# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'associations' do
    it { should belong_to(:school).optional }
    it { should have_many(:donations) }
  end

  describe 'validations' do
    it { should validate_presence_of(:email) }
  end
end
