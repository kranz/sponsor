class CreateRichiedenti < ActiveRecord::Migration
  def change
    create_table :richiedenti do |t|
      t.string :cana
      t.string :ragionesociale
      t.string :indirizzo
      t.string :cap
      t.string :citta
      t.string :telefono
      t.string :fax
      t.string :piva
      t.string :email
      t.string :note
      t.integer :provincia_id

      t.timestamps
    end
  end
end
