class ChangeDurationToTimeTo < ActiveRecord::Migration[6.1]
  def change
    remove_column :sessions, :start_time
    remove_column :sessions, :duration
    add_column :sessions, :time_from, :time
    add_column :sessions, :time_to, :time
  end
end
