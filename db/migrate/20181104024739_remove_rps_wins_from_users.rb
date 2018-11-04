class RemoveRpsWinsFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :rps_wins, :integer
  end
end
