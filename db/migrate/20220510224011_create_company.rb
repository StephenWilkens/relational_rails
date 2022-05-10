class CreateCompany < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.integer :total_stock
      t.boolean :pro_deal
      t.string :name
      t.string :location
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
