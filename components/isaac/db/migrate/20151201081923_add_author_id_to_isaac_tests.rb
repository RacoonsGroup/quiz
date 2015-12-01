class AddAuthorIdToIsaacTests < ActiveRecord::Migration
  def change
    add_column :isaac_tests, :author_id, :integer
  end
end
