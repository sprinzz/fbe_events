class AddSpeakerToSessions < ActiveRecord::Migration[6.1]
  def change
    add_reference :sessions, :speaker, foreign_key:true
  end
end
