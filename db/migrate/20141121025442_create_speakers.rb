class CreateSpeakers < ActiveRecord::Migration
  def change
    create_table :speakers do |t|
      t.string :name
      t.string :topic
      t.text :description
      t.integer :event_id

      t.timestamps
    end
  end
end
