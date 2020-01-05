class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :name, default: '', null: false
      t.string :creature, default: '', null: false
      t.string :founder, default: '', null: false
      t.string :color1, default: '', null: false
      t.string :color2, default: '', null: false
      t.string :values, array: true, default: [], null: false
      t.decimal :score, default: 0.0, null: false

      t.timestamps
    end

    add_index :teams, :name, unique: true
  end
end
