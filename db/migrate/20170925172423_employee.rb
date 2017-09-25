class Employee < ActiveRecord::Migration[5.1]
  def change
    create_table :employee do |t|
      t.column :name, :string
      t.column :division_id, :integer
      t.column :project_id, :integer
    end
  end
end
