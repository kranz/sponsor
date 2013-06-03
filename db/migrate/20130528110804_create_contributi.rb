class CreateContributi < ActiveRecord::Migration
  def change
    create_table :contributi do |t|
      t.string  :codice
      t.date    :datarichiesta
      t.text    :oggetto
      t.string  :segnalante
      t.integer :tipo_contributo_id
      t.integer :filiale_id
      t.integer :richiedente_id

      t.timestamps
    end
  end
end
