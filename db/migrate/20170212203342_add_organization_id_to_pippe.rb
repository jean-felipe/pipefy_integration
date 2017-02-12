class AddOrganizationIdToPippe < ActiveRecord::Migration
  def change
    add_column :pipes, :organization_id, :integer
  end
end
