class AddTeamNamesToChallenges < ActiveRecord::Migration[5.1]
  def change
    add_column :challenges, :team_names, :string
  end
end
