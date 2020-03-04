class CreateDesarrollos < ActiveRecord::Migration[6.0]
  def change
    create_table :desarrollos do |t|
      t.string :politicas
      t.string :entornos
      t.string :funcionalidad
      t.string :aceptacion
      t.references :empresa, foreign_key: true
      t.timestamps
    end
  end
end
