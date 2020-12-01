class CreateShelters < ActiveRecord::Migration[6.0]
  def change
    create_table :shelters do |t|
      t.string :name
    end 
  end
end
