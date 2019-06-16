# frozen_string_literal: true

module Swagger
  module ApiDocs
    extend ActiveSupport::Concern
    include Swagger::Blocks

    included do
      swagger_root do
        key :swagger, '2.0'
        info do
          key :version, '1.0.0'
          key :title, 'Apis'
          key :description, 'Muldel Apis'
          contact name: '@paveg'
          license name: 'MIT'
        end

        key :basePath, '/'
        key :consumes, ['application/json']
        key :produces, ['application/json']

        extend Swagger::Parameters
      end
      SWAGGERD_CLASSES = [
        Apis::V1::DeliveryCompany,
        Apis::V1::DeliveryCompaniesController,
        self
      ].freeze
    end

    def root_json
      Swagger::Blocks.build_root_json(SWAGGERD_CLASSES)
    end
  end
end
