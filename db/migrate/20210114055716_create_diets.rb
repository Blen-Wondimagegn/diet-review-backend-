class CreateDiets < ActiveRecord::Migration[6.0]
  def change
    create_table :diets do |t|
      t.string :name
      t.string :gender
      t.string :height
      t.integer :age
      t.string :diet_type
      t.integer :start_weight
      t.integer :lost_weight
      t.string :duration

      t.timestamps
    end
  end
end
