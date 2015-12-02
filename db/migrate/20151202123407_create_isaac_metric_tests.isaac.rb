# This migration comes from isaac (originally 20151201135424)
class CreateIsaacMetricTests < ActiveRecord::Migration
  def change
    create_table :isaac_metric_tests do |t|
      t.references :isaac_metric, index: true, foreign_key: true
      t.references :isaac_test, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
