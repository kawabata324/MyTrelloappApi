class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.references :school, foreign_key: true
      t.integer :grade
      t.timestamps
    end
  end
end
