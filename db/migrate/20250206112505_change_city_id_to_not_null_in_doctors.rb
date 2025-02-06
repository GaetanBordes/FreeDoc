class ChangeCityIdToNotNullInDoctors < ActiveRecord::Migration[8.0]
  def change
    change_column_null :doctors, :city_id, false
  end
end
