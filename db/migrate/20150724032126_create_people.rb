class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.references :gender, index: true, foreign_key: true
      t.date :date_of_birth
      t.string :place_of_birth
      t.string :other_details

      t.timestamps null: false
    end
  end
end
