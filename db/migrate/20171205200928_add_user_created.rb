class AddUserCreated < ActiveRecord::Migration[5.1]
  def change
    add_column :challenges, :user_created, :string
  end
end
