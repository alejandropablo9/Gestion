class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :matricula
      t.string :nombre
      t.string :apellido_paterno
      t.string :apellido_materno
      t.string :nombre_del_tutor
      t.string :direccion
      t.string :telefono

      t.timestamps
    end
  end
end
