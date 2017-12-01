class AddVoteToUserChallenges < ActiveRecord::Migration[5.1]
  def change
    add_column :user_challenges, :vote, :integer
  end
end
