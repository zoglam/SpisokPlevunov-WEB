class CreateSpisokOfNames < ActiveRecord::Migration[5.2]
  def change
    create_table :spisok_of_names do |t|
      t.string :names

      t.timestamps
    end
  end
end
