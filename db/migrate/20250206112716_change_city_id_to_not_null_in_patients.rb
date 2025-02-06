class ChangeCityIdToNotNullInPatients < ActiveRecord::Migration[8.0]
  def change
    change_column_null :patients, :city_id, false
  end
end
