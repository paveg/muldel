class CreateDeliveryCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :delivery_companies do |t|
      t.string :url, null: false
      t.integer :contractor, default: 0, null: false, uniqueness: true

      t.timestamps
    end
  end
end
