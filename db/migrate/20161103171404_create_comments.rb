class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.integer :user_id
      t.integer :member_id
      t.integer :coaches_id
      t.integer :fixtures_id

      t.timestamps
    end
  end
end
