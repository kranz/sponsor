class CreateDocumenti < ActiveRecord::Migration
  def change
    create_table :documenti do |t|
      t.string :numerofattura
      t.date :datafattura
      t.decimal :importo
      t.integer :tipo_documento_id
      t.integer :valuta_id
      t.integer :contributo_id

      t.timestamps
    end
  end
end
