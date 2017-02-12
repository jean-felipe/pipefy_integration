class CreatePipes < ActiveRecord::Migration
  def change
    create_table :pipes do |t|
      t.string :name
      t.text :token
      t.boolean :can_edit

      t.timestamps null: false
    end
  end
end
