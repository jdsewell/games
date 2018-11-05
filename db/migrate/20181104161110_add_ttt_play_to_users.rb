class AddTttPlayToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :ttt_play, :text
  end
end
