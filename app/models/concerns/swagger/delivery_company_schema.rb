# frozen_string_literal: true

module Swagger::DeliveryCompanySchema
  extend ActiveSupport::Concern
  include Swagger::Blocks

  included do
    swagger_schema :DeliveryCompanyInput do
      key :required, [:id]
      property :id do
        key :type, :integer
        key :format, :int64
      end
    end

    swagger_schema :DeliveryCompanyOutput do
      key :required, %i[id url contractor]
      property :id do
        key :type, :integer
        key :format, :int64
      end
      property :url do
        key :type, :string
      end
      property :contractor do
        key :type, :integer
        key :format, :int64
      end
    end
  end
end
