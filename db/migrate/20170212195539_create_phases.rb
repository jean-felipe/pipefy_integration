class CreatePhases < ActiveRecord::Migration
  def change
    create_table :phases do |t|
      t.string :name
      t.text :description
      t.boolean :done
      t.integer :pipe_id
      t.decimal :index
      t.boolean :draft

      t.timestamps null: false
    end
  end
end
