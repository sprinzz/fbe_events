class CreateSessions < ActiveRecord::Migration[6.1]
  def change
    create_table :sessions do |t|
      t.string :title
      t.time :start_time
      t.integer :duration
      t.text :description

      t.timestamps
    end
  end
end
