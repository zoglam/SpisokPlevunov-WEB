class CreateEmails < ActiveRecord::Migration[5.2]
  def change
    create_table :emails do |t|
      t.string :name
      t.string :secondName
      t.string :email

      t.timestamps
    end
  end
end
