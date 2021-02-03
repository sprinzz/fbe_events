class CreateSpeakers < ActiveRecord::Migration[6.1]
  def change
    create_table :speakers do |t|
      t.string :title
      t.string :first_name
      t.string :last_name
      t.string :institution
      t.string :email
      t.text :bio
      t.string :image

      t.timestamps

    end
  end
end
