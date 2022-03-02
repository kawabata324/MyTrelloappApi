class CreatePeople < ActiveRecord::Migration[6.1]
  def change
    create_table :people do |t|
      t.references :student, foreign_key: true
      t.integer :age
      t.timestamps
    end
  end
end
