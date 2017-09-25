
class Division < ActiveRecord::Migration[5.1]
  def change
    create_table :divisions do |t|
      t.column :department, :string
    end
  end
end
