class ChangeUserCreatedDataTypeForChallenges < ActiveRecord::Migration[5.1]
  def change
    change_column :challenges, :user_created, 'integer USING CAST(user_created AS integer)'
  end
end
