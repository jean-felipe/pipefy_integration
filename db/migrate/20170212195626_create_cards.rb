class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :title
      t.integer :current_phase_id
      t.date :due_date
      t.decimal :index

      t.timestamps null: false
    end
  end
end
