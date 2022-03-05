class ChangeProductsPrice < ActiveRecord::Migration[6.1]
  def up
    change_table :products do |t|
      t.change :price, :integer
    end
  end
end
