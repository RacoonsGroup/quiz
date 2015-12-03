# This migration comes from isaac (originally 20151203101727)
class CreateIsaacResults < ActiveRecord::Migration
  def change
    create_table :isaac_results do |t|
      t.references :isaac_test, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
