class AddColumnToVenues < ActiveRecord::Migration
  def change
    add_column :venues, :pitch, :string
  end
end
