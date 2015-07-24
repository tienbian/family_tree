class CreateRelationshipTypes < ActiveRecord::Migration
  def change
    create_table :relationship_types do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
