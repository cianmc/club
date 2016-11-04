class CreateClub2s < ActiveRecord::Migration
  def change
    create_table :club2s do |t|
      t.string :name
      t.string :address
      t.integer :member_id
      t.integer :coach_id

      t.timestamps
    end
  end
end
