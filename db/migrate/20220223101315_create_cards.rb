class CreateCards < ActiveRecord::Migration[6.1]
  def change
    create_table :cards do |t|
      t.string :card_title, null: false
      t.text :body
      t.integer :status, default: 0
      t.date :expires_at
      t.references :user, null: false, foreign_key: true
      t.references :list, null: false, foreign_key: true
      t.timestamps
    end
  end
end
