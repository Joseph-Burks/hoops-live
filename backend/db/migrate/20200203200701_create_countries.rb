class CreateCountries < ActiveRecord::Migration[6.0]
  def change
    create_table :countries do |t|
      t.integer :country_id
      t.string :name
      t.string :code
      t.string :flag_image
    end
  end
end
