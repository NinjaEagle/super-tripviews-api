class CreateDestinations < ActiveRecord::Migration[5.2]
  def change
    create_table :destinations do |t|
      t.string :name
      t.string :image
      t.string :climate
      t.text :attractions
      t.string :description
      t.float :latitude
      t.float :longitude
      t.timestamps
    end
  end
end
