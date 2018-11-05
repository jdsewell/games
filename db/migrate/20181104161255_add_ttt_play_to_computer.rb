class AddTttPlayToComputer < ActiveRecord::Migration[5.2]
  def change
    add_column :computers, :ttt_play, :text
  end
end
