class AddTaglineToUser < ActiveRecord::Migration[5.1]
  def change
      add_column :users, :tagline, :string
  end
end
