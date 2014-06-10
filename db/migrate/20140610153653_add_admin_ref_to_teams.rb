class AddAdminRefToTeams < ActiveRecord::Migration
  def change
    add_reference :teams, :admin, index: true
  end
end
