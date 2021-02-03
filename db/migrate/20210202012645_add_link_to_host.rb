class AddLinkToHost < ActiveRecord::Migration[6.1]
  def change
    add_column :hosts, :link, :string
  end
end
