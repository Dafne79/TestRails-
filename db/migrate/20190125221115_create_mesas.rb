class CreateMesas < ActiveRecord::Migration[5.1]
  def change
    create_table :mesas do |t|
      t.string :ocupado
      t.string :integer
      t.string :numeroSillas
      t.string :integer

      t.timestamps
    end
  end
end
