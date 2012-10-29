# This migration comes from play_futsal (originally 20120911152122)
class CreatePlayFutsalEventTypes < ActiveRecord::Migration
  def change
    create_table :play_futsal_event_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
