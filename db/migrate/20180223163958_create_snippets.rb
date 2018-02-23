class CreateSnippets < ActiveRecord::Migration
  def change
    create_table :snippets do |t|
      t.text :value
      t.boolean :is_private, default: false

      t.timestamps null: false
    end
  end
end
