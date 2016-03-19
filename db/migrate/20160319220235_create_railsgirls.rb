class CreateRailsgirls < ActiveRecord::Migration
  def change
    create_table :railsgirls do |t|
      t.string :name
      t.text :description
      t.string :picture
      t.date :visit

      t.timestamps null: false
    end
  end
end
