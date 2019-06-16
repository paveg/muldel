# frozen_string_literal: true

module Swagger
  module Parameters
    def self.extended(base)
      base.parameter :delivery_company_id do
        key :in, :path
        key :description, 'Delivery Company ID'
        key :required, true
        key :type, :integer
        key :format, :int64
      end

      base.parameter :delivery_company do
        key :name, :delivery_company
        key :in, :body
        key :description, 'delivery_company_attributes'
        key :required, true
        schema do
          key :'$ref', :DeliveryCompanyInput
        end
      end
    end
  end
end
