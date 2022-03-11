class CreateNumbers < ActiveRecord::Migration[6.1]
  def change
    create_table :numbers do |t|
      t.datetime :start
      t.datetime :end
      t.integer :luck_num
      t.integer :seven_num
      t.integer :big_num
      t.timestamps
    end
  end
  end
