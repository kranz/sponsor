class CreateRegioni < ActiveRecord::Migration
  def change
    create_table :regioni do |t|
      t.string :nome

      t.timestamps
    end
  end
end
