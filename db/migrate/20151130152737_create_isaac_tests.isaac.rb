# This migration comes from isaac (originally 20151130144210)
class CreateIsaacTests < ActiveRecord::Migration
  def change
    create_table :isaac_tests do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
