class CreateListItems < ActiveRecord::Migration
  def change
    create_table :list_items do |t|
      t.string :title
      t.text :description
      t.references :list, index: true

      t.timestamps
    end
  end
end
