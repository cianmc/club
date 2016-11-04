class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :fixture_id
      t.integer :coach_id

      t.timestamps
    end
  end
end
