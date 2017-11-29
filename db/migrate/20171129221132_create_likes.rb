class CreateLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :likes do |t|
      t.integer :user_id
      t.integer :challenge_id
      t.integer :team_number

      t.timestamps
    end
  end
end
