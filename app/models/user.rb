# frozen_string_literal: true

class User < ActiveRecord::Base
  extend Devise::Models

  devise :database_authenticatable, :registerable, :validatable
  include DeviseTokenAuth::Concerns::User

  belongs_to :school, optional: true
  has_many :donations, dependent: :nullify

  validates_presence_of :email

  attr_accessor :skip_password_validation

  protected

    def password_required?
      return false if skip_password_validation
      super
    end
end
