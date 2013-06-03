class CreateTipiContributo < ActiveRecord::Migration
  def change
    create_table :tipi_contributo do |t|
      t.string :descrizione

      t.timestamps
    end
  end
end
