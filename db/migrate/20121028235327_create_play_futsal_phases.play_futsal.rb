# This migration comes from play_futsal (originally 20121016231228)
class CreatePlayFutsalPhases < ActiveRecord::Migration
  def change
    create_table :play_futsal_phases do |t|
      t.string :name
      t.integer :position

      t.timestamps
    end
  end
end
