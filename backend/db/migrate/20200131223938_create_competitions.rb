class CreateCompetitions < ActiveRecord::Migration[6.0]
  def change
    create_table :competitions do |t|
      t.integer :comp_id
      t.string :name
      t.string :comp_type
      t.string :country
      t.string :season
    end
  end
end
