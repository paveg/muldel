# frozen_string_literal: true

class DeliveryCompaniesController < ApplicationController
  include Swagger::DeliveryCompaniesApi

  def index
    @delivery_companies = DeliveryCompany.all

    render json: @delivery_companies
  end
end
