class CreateSaleDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :sale_details do |t|
      t.string :currency
      t.string :country
      t.string :state
      t.references :sale, null: false, foreign_key: true

      t.timestamps
    end
  end
end
