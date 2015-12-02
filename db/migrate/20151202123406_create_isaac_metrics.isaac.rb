# This migration comes from isaac (originally 20151201135325)
class CreateIsaacMetrics < ActiveRecord::Migration
  def change
    create_table :isaac_metrics do |t|
      t.string :name
      t.text :description
      t.string :slug
      t.integer :author_id

      t.timestamps null: false
    end
  end
end
