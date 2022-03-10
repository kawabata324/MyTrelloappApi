class AddEmailConfirmationToDemoUser < ActiveRecord::Migration[6.1]
  def change
    add_column :demo_users, :email_confirmation, :string
  end
end
