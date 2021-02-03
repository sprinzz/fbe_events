class AddEventToSessions < ActiveRecord::Migration[6.1]
  def change
    add_reference :sessions, :event, foreign_key:true
  end
end
