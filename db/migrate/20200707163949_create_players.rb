class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.integer :position
      t.integer :age

      t.integer :team_id, null: false, foreign_key: true
      t.timestamps
    end
  end
end
