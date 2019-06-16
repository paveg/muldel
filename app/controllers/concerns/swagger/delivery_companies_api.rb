# frozen_string_literal: true

module Swagger
  module DeliveryCompaniesApi
    extend ActiveSupport::Concern
    include Swagger::Blocks

    included do
      include Swagger::ErrorSchema

      swagger_path '/delivery_companies' do
        operation :get do
          key :description, 'Get all delivery_companies'
          key :operationId, :get_all_delivery_company

          response 200 do
            key :description, 'All delivery_companies'
            schema type: :array do
              items do
                key :'$ref', :DeliveryCompanyOutput
              end
            end
          end
        end
      end
    end
  end
end
