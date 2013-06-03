class CreateEventi < ActiveRecord::Migration
  def change
    create_table :eventi do |t|
      t.string :localita
      t.date :datainizio
      t.date :datafine
      t.string :orario
      t.string :striscione
      t.date :dataconsprevista
      t.date :dataconseffettiva
      t.date :datarestituzione
      t.string :numstriscione
      t.string :durata
      t.integer :tipo_evento_id
      t.integer :contributo_id

      t.timestamps
    end
  end
end
