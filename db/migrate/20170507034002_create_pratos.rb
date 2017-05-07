class CreatePratos < ActiveRecord::Migration[5.0]
  def change
    create_table :pratos do |t|
      t.references :restaurante, foreign_key: true
      t.string :nome
      t.decimal :preco, :precision => 30, :scale => 10
      t.timestamps
    end
  end
end
