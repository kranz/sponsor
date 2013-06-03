class AddFakesToContributi < ActiveRecord::Migration
  def change
    add_column :contributi, :azienda, :string
    add_column :contributi, :stato, :string
    add_column :contributi, :tipo, :string
    add_column :contributi, :agenzia, :string
  end
end
