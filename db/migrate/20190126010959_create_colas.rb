class CreateColas < ActiveRecord::Migration[5.1]
  def change
    create_table :colas do |t|
      t.string :nombreCliente
      t.integer :cantidadPersonas

      t.timestamps
    end
  end
end
