class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.references :family, index: true, foreign_key: true
      t.integer :person_1_id
      t.integer :person_2_id
      t.references :relationship_type, index: true, foreign_key: true
      t.integer :role_1_id
      t.integer :role_2_id
      t.date :date_started
      t.date :date_ended
      t.string :other_details

      t.timestamps null: false
    end
  end
end
