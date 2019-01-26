class CreateGustos < ActiveRecord::Migration[5.1]
  def change
    create_table :gustos do |t|
      t.string :Nombre

      t.timestamps
    end
  end
end
