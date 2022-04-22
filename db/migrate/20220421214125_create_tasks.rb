class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|

      t.string :name, required: true

      t.text :details

      t.integer :required_time_in_minutes
      t.integer :time_of_day
      t.integer :frequency

      t.timestamps
    end
  end
end
