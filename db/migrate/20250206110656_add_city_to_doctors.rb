class AddCityToDoctors < ActiveRecord::Migration[8.0]
  def change
    add_reference :doctors, :city, foreign_key: true, null: true
  end
end
