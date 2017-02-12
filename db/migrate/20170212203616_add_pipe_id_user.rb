class AddPipeIdUser < ActiveRecord::Migration
  def change
  	add_column :users, :pipe_id, :integer
  end
end
