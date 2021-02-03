class ChangeHostNameToName < ActiveRecord::Migration[6.1]
  def change
    remove_column :hosts, :host_name
    add_column :hosts, :name, :string
  end
end
