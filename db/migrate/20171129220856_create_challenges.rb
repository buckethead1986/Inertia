class CreateChallenges < ActiveRecord::Migration[5.1]
  def change
    create_table :challenges do |t|
      t.string :name
      t.string :description
      t.string :type
      t.string :criteria
      t.boolean :public

      t.timestamps
    end
  end
end
