class CreateFixtures < ActiveRecord::Migration
  def change
    create_table :fixtures do |t|
      t.string :opposition
      t.string :referee
      t.date :date
      t.string :time
      t.integer :venue_id

      t.timestamps
    end
  end
end
