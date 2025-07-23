class CreatePapers < ActiveRecord::Migration[8.0]
  def change
    create_table :papers do |t|
      t.string :title
      t.string :other_field

      t.timestamps
    end
  end
end
