class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.references :tourist, foreign_key: true
      t.references :destination, foreign_key: true
      t.string :name
      t.text :description
      t.string :destination_name

      t.timestamps
    end
  end
end
