class CreateScraps < ActiveRecord::Migration
  def change
    create_table :scraps do |t|
      t.references :user, index: true
      t.string :slug
      t.text :body
      t.integer :expires_after
      t.datetime :expired_at
      t.string :syntax

      t.timestamps null: false
    end
    add_index :scraps, :slug, unique: true
    add_foreign_key :scraps, :users
  end
end
