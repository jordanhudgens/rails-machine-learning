class AddArrayColumnToProfiles < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :profile_values, :string, array: true, default: []
  end
end
