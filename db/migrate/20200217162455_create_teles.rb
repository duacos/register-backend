class CreateTeles < ActiveRecord::Migration[6.0]
  def change
    create_table :teles do |t|
      t.string :controles_red
      t.string :mecanismos_seg
      t.string :segregacion_redes
      t.string :procedimientos
      t.string :intercambio
      t.string :mensajeria
      t.string :confidencialidad
      t.references :empresa, foreign_key: true
      t.timestamps
    end
  end
end
