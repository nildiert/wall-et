class CreateEntrances < ActiveRecord::Migration[7.0]
  def change
    create_table :entrances do |t|
      t.integer :amount
      t.integer :current_amount
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
