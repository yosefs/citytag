class CreateTagcities < ActiveRecord::Migration
  def change
    create_table :tagcities do |t|
      t.integer :city_id
      t.integer :tag_id
    end
   add_index :tagcities, [:city_id, :tag_id], :unique => true
  end
end
