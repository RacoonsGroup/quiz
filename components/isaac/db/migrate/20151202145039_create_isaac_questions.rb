class CreateIsaacQuestions < ActiveRecord::Migration
  def change
    create_table :isaac_questions do |t|
      t.references :isaac_metric, index: true, foreign_key: true
      t.text :body

      t.timestamps null: false
    end
  end
end
