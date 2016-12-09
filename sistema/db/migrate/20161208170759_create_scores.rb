class CreateScores < ActiveRecord::Migration[5.0]
  def change
    create_table :scores do |t|
      t.string :calificacion
      t.references :subject, foreign_key: true
      t.references :bimester, foreign_key: true
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
