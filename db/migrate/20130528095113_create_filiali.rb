class CreateFiliali < ActiveRecord::Migration
  def change
    create_table :filiali do |t|
      t.string :nome
      t.string :codice
      t.string :cab
      t.integer :banca_id
      t.integer :area_territoriale_id

      t.timestamps
    end
  end
end
