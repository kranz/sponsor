class CreateTipiDocumento < ActiveRecord::Migration
  def change
    create_table :tipi_documento do |t|
      t.string :descrizione

      t.timestamps
    end
  end
end
