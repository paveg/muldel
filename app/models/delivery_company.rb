# frozen_string_literal: true

class DeliveryCompany < ApplicationRecord
  include Swagger::DeliveryCompanySchema

  enum contractor: { yamato: 0, sagawa: 1, japan_post: 2, tmg: 3 }
  validates :contractor, uniqueness: true
  validates :url, presence: true
end
