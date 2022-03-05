class AddDemoUserRefToProducts < ActiveRecord::Migration[6.1]
  def change
    add_reference :products, :demo_user, null: false, foreign_key: true
  end
end
