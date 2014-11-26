class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.date :event_date
      t.text :location
      t.text :description
    

      t.timestamps
    end
  end
end
