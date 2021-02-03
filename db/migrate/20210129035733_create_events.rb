class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :event_name
      t.date :date_from
      t.date :date_to

      t.timestamps
    end
  end
end
