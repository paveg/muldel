# frozen_string_literal: true

class ApiDocsController < ApplicationController
  include Swagger::ApiDocs

  def index
    render json: root_json, status: :ok
  end
end
