# This migration comes from play_futsal (originally 20120924152624)
class CreatePlayFutsalGroups < ActiveRecord::Migration
  def up
    create_table :play_futsal_groups do |t|
      t.string :name
    end
  end

  def down
    drop_table :play_futsal_groups
  end
end
