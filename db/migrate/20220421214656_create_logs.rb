class CreateLogs < ActiveRecord::Migration[6.1]
  def change
    create_table :logs do |t|
      t.belongs_to :task, null: false, foreign_key: true

      t.text :notes

      t.boolean :gave_reward, default: false;

      t.timestamps
    end
  end
end
