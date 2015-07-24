class RemovePartNumberFromProducts < ActiveRecord::Migration
  def change
    remove_column :users, :name, :string
    remove_column :users, :gender, :string
    remove_column :users, :date_of_birth, :datetime
    remove_column :users, :place_of_birth, :string
  end
end
