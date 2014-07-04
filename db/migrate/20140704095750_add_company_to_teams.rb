class AddCompanyToTeams < ActiveRecord::Migration
  def change
    add_column :teams, :company, :string
  end
end
