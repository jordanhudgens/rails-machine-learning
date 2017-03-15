class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.boolean :success
      t.integer :opennes
      t.integer :conscientiousness
      t.integer :extroversion
      t.integer :agreeableness
      t.integer :neuroticism

      t.timestamps
    end
  end
end
