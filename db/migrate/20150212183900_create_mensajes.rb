class CreateMensajes < ActiveRecord::Migration
  def change
    create_table :mensajes do |t|
      t.string :respuesta
      t.date :date

      t.timestamps null: false
    end
  end
end
