class CreateSpeakerRoles < ActiveRecord::Migration[6.1]
  def change
    create_table :speaker_roles do |t|
      t.string :role
      t.timestamps
    end
  end
end
