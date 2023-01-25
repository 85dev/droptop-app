class CreateMissions < ActiveRecord::Migration[7.0]
  def change
    create_table :missions do |t|
      t.string :name
      t.text :description
      t.references :user, null: false, foreign_key: true
      t.string :company
      t.string :category

      t.timestamps
    end
  end
end
