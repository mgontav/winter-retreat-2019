class RemoveScoreFromTeams < ActiveRecord::Migration[6.0]
  def change
    remove_column :teams, :score, :decimal
  end
end
