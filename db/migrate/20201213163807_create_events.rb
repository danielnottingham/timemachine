class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.integer :external_id
      t.string :event_name
      t.date :event_date
      t.string :contact_name
      t.references :time_machine, null: false, foreign_key: true

      t.timestamps
    end
  end
end
