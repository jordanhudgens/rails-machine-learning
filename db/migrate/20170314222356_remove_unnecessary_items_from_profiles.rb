class RemoveUnnecessaryItemsFromProfiles < ActiveRecord::Migration[5.0]
  def change
    remove_column :profiles, :opennes, :integer
    remove_column :profiles, :success, :integer
    remove_column :profiles, :conscientiousness, :integer
    remove_column :profiles, :extroversion, :integer
    remove_column :profiles, :agreeableness, :integer
    remove_column :profiles, :neuroticism, :integer
  end
end
