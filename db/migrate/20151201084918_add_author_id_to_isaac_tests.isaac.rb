# This migration comes from isaac (originally 20151201081923)
class AddAuthorIdToIsaacTests < ActiveRecord::Migration
  def change
    add_column :isaac_tests, :author_id, :integer
  end
end
