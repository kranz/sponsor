class CreateBanche < ActiveRecord::Migration
  def change
    create_table :banche do |t|
      t.string :nome
      t.string :abi

      t.timestamps
    end
  end
end
