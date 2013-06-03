class CreateTipiEvento < ActiveRecord::Migration
  def change
    create_table :tipi_evento do |t|
      t.string :descrizione

      t.timestamps
    end
  end
end
