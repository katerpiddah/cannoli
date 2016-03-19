class CreateAdventures < ActiveRecord::Migration
  def change
    create_table :adventures do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
