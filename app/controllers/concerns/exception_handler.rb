module ExceptionHandler
  extend ActiveSupport::Concern

  included do
    rescue_from ActiveRecord::RecordNotFound do |_e|
      render json: { message: _e }, status: :not_found
    end

    rescue_from ActionController::ParameterMissing do |_e|
      render json: { message: _e }, status: :unprocessable_entity
    end
  end
end

