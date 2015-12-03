# This migration comes from isaac (originally 20151202150020)
class CreateIsaacAnswers < ActiveRecord::Migration
  def change
    create_table :isaac_answers do |t|
      t.references :isaac_question, index: true, foreign_key: true
      t.text :body
      t.integer :value

      t.timestamps null: false
    end
  end
end
