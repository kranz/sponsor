class AddImportiToContributi < ActiveRecord::Migration
  def change
    add_column :contributi, :dataerogazione, :date
    add_column :contributi, :stato_contributo_id, :integer
    add_column :contributi, :importorichiesto, :decimal
    add_column :contributi, :importoerogato, :decimal
    add_column :contributi, :aliquotaiva, :decimal
  end
end
