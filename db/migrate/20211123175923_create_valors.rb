class CreateValors < ActiveRecord::Migration[6.1]
  def change
    create_table :valors do |t|
      t.integer :uf
      t.date :date

      t.timestamps
    end
  end
end
