# This migration comes from isaac (originally 20151203101940)
class AddProbationerNameToIsaacResult < ActiveRecord::Migration
  def change
    add_column :isaac_results, :probationer_name, :string
  end
end
