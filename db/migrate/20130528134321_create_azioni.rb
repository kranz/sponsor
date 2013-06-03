class CreateAzioni < ActiveRecord::Migration
  def change
    create_table :azioni do |t|
      t.string :nome
      t.integer :contributo_id
      t.integer :tipo_azione_id

      t.timestamps
    end
  end
end
