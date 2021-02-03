class AddDateToSession < ActiveRecord::Migration[6.1]
  def change
    add_column :sessions, :date, :date
  end
end
