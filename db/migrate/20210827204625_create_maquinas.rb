class CreateMaquinas < ActiveRecord::Migration[6.1]
  def change
    create_table :maquinas do |t|
      t.string :tipo
      t.string :nome
      t.text :descricao
      t.integer :garantia
      t.date :compra
      t.boolean :quebrada

      t.timestamps
    end
  end
end
