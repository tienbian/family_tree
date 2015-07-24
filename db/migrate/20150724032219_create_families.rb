class CreateFamilies < ActiveRecord::Migration
  def change
    create_table :families do |t|
      t.references :person, index: true, foreign_key: true
      t.string :name
      t.string :description
      t.date :date_from
      t.date :date_to
      t.string :other_details

      t.timestamps null: false
    end
  end
end
