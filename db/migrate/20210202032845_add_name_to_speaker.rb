class AddNameToSpeaker < ActiveRecord::Migration[6.1]
  def change
    remove_column :speakers, :first_name
    remove_column :speakers, :last_name
    add_column :speakers, :name, :string
  end
end
