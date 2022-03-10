class CreateCopyProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :copy_products  do |t|
      t.string :name, index: true
      t.string :email, index: { unique: true, name: 'unique_emails'}
    end
  end
end