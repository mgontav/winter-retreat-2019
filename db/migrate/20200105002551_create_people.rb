class CreatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people do |t|
      t.string :name, default: '', null: false
      t.bigint :team_id

      t.timestamps
    end

    add_index :people, :name, unique: true
  end
end
