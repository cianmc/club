class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.date :dob
      t.integer :phone_number
      t.string :sex
      t.string :membership
      t.string :password_digest
      t.integer :team_id

      t.timestamps
    end
  end
end
