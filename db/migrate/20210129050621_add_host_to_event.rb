class AddHostToEvent < ActiveRecord::Migration[6.1]
  def change
    add_reference :events, :host, foreign_key:true
  end
end
