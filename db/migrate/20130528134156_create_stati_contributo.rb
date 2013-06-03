class CreateStatiContributo < ActiveRecord::Migration
  def change
    create_table :stati_contributo do |t|
      t.string :nome

      t.timestamps
    end
  end
end
