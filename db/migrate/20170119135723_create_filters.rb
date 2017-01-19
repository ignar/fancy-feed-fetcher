class CreateFilters < ActiveRecord::Migration[5.0]
  def change
    create_table :filters do |t|
      t.string :label
      t.string :pattern

      t.timestamps
    end
  end
end
