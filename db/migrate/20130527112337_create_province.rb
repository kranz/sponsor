class CreateProvince < ActiveRecord::Migration
  def change
    create_table :province do |t|
      t.string :nome
      t.string :sigla
      t.integer :regione_id

      t.timestamps
    end
  end
end
