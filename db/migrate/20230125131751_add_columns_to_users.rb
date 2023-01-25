class AddColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :pseudo, :string
    add_column :users, :status, :string
    add_column :users, :seniority, :date
    add_column :users, :missions_done, :integer
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :agency, :string
  end
end
