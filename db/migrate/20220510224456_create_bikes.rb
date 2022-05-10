class CreateBikes < ActiveRecord::Migration[5.2]
  def change
    create_table :bikes do |t|
      t.boolean :full_suspension
      t.integer :front_travel
      t.string :name
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
