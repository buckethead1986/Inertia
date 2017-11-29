class CreateUserChallenges < ActiveRecord::Migration[5.1]
  def change
    create_table :user_challenges do |t|
      t.integer :user_id
      t.integer :challenge_id
      t.string :role

      t.timestamps
    end
  end
end
