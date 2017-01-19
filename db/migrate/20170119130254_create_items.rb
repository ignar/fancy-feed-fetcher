class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.references :feed
      t.string :title
      t.string :link
      t.text :description
      t.string :category
      t.string :source

      t.timestamps
    end
  end
end
