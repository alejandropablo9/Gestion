class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups do |t|
      t.string :grupo
      t.references :grade, foreign_key: true
      t.references :period, foreign_key: true

      t.timestamps
    end
  end
end
