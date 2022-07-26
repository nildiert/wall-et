class CreateMovements < ActiveRecord::Migration[7.0]
  def change
    create_table :movements do |t|
      t.string :name
      t.integer :amount
      t.integer :kind, default: 1
      t.references :category, null: false, foreign_key: true
      t.references :entrance, null: false, foreign_key: true

      t.timestamps
    end
  end
end
