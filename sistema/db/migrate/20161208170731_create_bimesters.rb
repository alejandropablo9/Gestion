class CreateBimesters < ActiveRecord::Migration[5.0]
  def change
    create_table :bimesters do |t|
      t.string :bimestre
      t.references :period, foreign_key: true

      t.timestamps
    end
  end
end
