# This migration comes from isaac (originally 20151203102225)
class AddAnswersToIsaacResults < ActiveRecord::Migration
  def change
    add_column :isaac_results, :answers, :json, default: {}, null: false
  end
end
