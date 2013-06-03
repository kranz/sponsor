class CreateValute < ActiveRecord::Migration
  def change
    create_table :valute do |t|
      t.string :sigla
      t.string :nome

      t.timestamps
    end
  end
end
