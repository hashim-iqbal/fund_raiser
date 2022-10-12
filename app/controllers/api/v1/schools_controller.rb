module Api
  module V1
    class SchoolsController < BaseController
      actions :index

      private

        def collection
          model.all.select(:id, :name)
        end
    end
  end
end
