# frozen_string_literal: true

require 'csv'

namespace :delivery_company_master do
  desc 'Imports DB from tsv seed'
  task import: :environment do
    filepath = Rails.root.join('db', 'seeds', 'delivery_company_master.tsv')
    exit unless File.exist? filepath

    csv = CSV.read(filepath, headers: true, col_sep: "\t")
    csv.each do |data|
      unless DeliveryCompany.exists?(url: data[1], contractor: data[2])
        DeliveryCompany.create!(url: data[1], contractor: data[2].to_i)
      end
    end
  end
end
