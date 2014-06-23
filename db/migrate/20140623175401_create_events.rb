class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.date :date
      t.string :suburb
      t.string :venue
      t.datetime :time
      t.string :judges

      t.timestamps
    end
  end
end
