class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :zipcode, :integer
    add_column :users, :subject_id, :integer
    add_column :users, :longitude, :float
    add_column :users, :latitude, :float
  end
end
