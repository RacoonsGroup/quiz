class AddAnswersToIsaacResults < ActiveRecord::Migration
  def change
    add_column :isaac_results, :answers, :json, default: {}, null: false
  end
end
