class RemoveDemoUserRefFromProducts < ActiveRecord::Migration[6.1]
  def change
    remove_reference :products, :demo_user, null: false, foreign_key: true
  end
end
