class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :details
      t.boolean :completed
      # change_column_default :tasks, :completed, from: true, to: false
      t.timestamps
    end
  end
end
