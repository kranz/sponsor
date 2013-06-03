class CreateAreeTerritoriali < ActiveRecord::Migration
  def change
    create_table :aree_territoriali do |t|
      t.string :nome
      t.string :codice
      t.integer :provincia_id
      t.integer :banca_id

      t.timestamps
    end
  end
end
