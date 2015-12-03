# This migration comes from isaac (originally 20151202145348)
class CreateIsaacMetricGraduations < ActiveRecord::Migration
  def change
    create_table :isaac_metric_graduations do |t|
      t.references :isaac_metric, index: true, foreign_key: true
      t.string :name
      t.string :slug
      t.integer :min_value
      t.integer :max_value
      t.text :description

      t.timestamps null: false
    end
  end
end
