class CreateTourists < ActiveRecord::Migration[5.2]
  def change
    create_table :tourists do |t|
      t.string :name
      t.integer :age
      t.text :review

      t.timestamps
    end
  end
end
