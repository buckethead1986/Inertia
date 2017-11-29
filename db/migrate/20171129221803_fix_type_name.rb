class FixTypeName < ActiveRecord::Migration[5.1]
  def change
    rename_column :challenges, :type, :challenge_type
  end
end
