class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.date :dateEvent
      t.text :description
      t.string :email_organizer

      t.timestamps
    end
  end
end
