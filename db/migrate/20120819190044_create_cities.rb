class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
      t.decimal  :latitude, :precision => 15, :scale => 10, :default => 0.0
      t.decimal  :longitude, :precision => 15, :scale => 10, :default => 0.0
    end
    add_index :cities, :name, :unique => true
  end
end
