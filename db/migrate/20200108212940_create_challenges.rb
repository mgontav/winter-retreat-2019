class CreateChallenges < ActiveRecord::Migration[6.0]
  def change
    create_table :challenges do |t|
      t.string :name, default: '', null: false
      t.decimal :score, default: 0.0, null:false
      t.bigint :team_id

      t.timestamps
    end

    add_index :challenges, :name, unique: true
  end
end
