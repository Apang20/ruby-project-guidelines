class CreateDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :gender
      t.integer :age
      t.integer :shelter_id
      t.boolean :adopted, default: false
    end
  end
end

# figure out how to use the t.boolean
