class CreatePosizioni < ActiveRecord::Migration
  def change
    create_table :posizioni do |t|
      t.string :numeroconto
      t.string :iban
      t.integer :richiedente_id
      t.integer :banca_id
      t.integer :filiale_id_id

      t.timestamps
    end
  end
end
