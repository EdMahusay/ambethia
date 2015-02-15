class CreateScrapViews < ActiveRecord::Migration
  def change
    create_table :scrap_views do |t|
      t.references :scrap, index: true
      t.string :remote_ip
      t.string :user_agent
      t.datetime :viewed_at

      t.timestamps null: false
    end
    add_foreign_key :scrap_views, :scraps
  end
end
