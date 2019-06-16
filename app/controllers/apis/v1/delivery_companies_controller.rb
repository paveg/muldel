# frozen_string_literal: true

module Apis
  module V1
    class DeliveryCompaniesController < ApplicationController
      include Swagger::DeliveryCompaniesApi

      def index
        @delivery_companies = DeliveryCompany.all

        render json: @delivery_companies
      end
    end
  end
end
