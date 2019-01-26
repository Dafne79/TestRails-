class CreateHasGustos < ActiveRecord::Migration[5.1]
  def change
    create_table :has_gustos do |t|
      t.string :category
      t.references :cliente, foreign_key: true
      t.references :gustos, foreign_key: true

      t.timestamps
    end
  end
end
