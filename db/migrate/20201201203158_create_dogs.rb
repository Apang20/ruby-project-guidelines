class CreateDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :gender
      t.string :breed
      t.integer :age
      t.integer :shelter_id
      
    end
  end
end

# figure out how to use the t.boolean
