class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name
      t.date :dob
      t.references :breed, index: true, foreign_key: true
      t.string :med_conditions
      t.references :vet, index: true, foreign_key: true
      t.boolean :daycare_resident

      t.timestamps null: false
    end
  end
end
