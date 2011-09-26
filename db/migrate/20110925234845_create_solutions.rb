class CreateSolutions < ActiveRecord::Migration
  def change
    create_table :solutions do |t|
      t.text :description
      t.integer :sort_order

      t.timestamps
    end
  end
end
