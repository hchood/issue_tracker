class AddSeverityToIssues < ActiveRecord::Migration
  def change
    add_column :issues, :severity, :string, null: false
  end
end
