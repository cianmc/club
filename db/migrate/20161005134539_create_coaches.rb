class CreateCoaches < ActiveRecord::Migration
  def change
    create_table :coaches do |t|
      t.string :name
      t.integer :phone_number
      t.string :email
      t.boolean :garda_vetted

      t.timestamps
    end
  end
end
