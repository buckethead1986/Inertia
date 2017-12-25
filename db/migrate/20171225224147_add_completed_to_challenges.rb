class AddCompletedToChallenges < ActiveRecord::Migration[5.1]
  def change
    add_column :challenges, :completed, :boolean
  end
end
