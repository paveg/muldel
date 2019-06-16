# frozen_string_literal: true

require 'rails_helper'

describe ApiDocsController, type: :request do
  describe 'GET /api-docs' do
    subject { get '/api-docs' }

    it do
      res = subject
      expect(res.status).to be(200)
      b = JSON.parse(res.body).deep_symbolize_keys
      expect(b).to be_include(:swagger)
      expect(b[:definitions].keys.count).to be(3)
    end
  end
end
