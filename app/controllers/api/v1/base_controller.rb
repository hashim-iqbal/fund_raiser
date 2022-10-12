module Api
  module V1
    class BaseController < ApplicationController
      include BaseHandler

      def index
        render json: collection.as_json
      end

      def create
        if new_resource&.save
          render json: new_resource, status: :created
        else
          render json: { message: new_resource&.errors&.messages }, status: :unprocessable_entity
        end
      end

      protected

        def new_resource; end

        def collection
          model.all
        end
    end
  end
end
