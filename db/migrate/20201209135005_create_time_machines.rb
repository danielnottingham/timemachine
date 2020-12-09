class CreateTimeMachines < ActiveRecord::Migration[6.0]
  def change
    create_table :time_machines do |t|
      t.integer :external_id
      t.string :status
      t.date :recorded_at

      t.timestamps
    end
  end
end
