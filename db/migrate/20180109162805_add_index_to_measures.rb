class AddIndexToMeasures < ActiveRecord::Migration[5.1]
  def change
    add_column :measures, :measure_id, :string unless column_exists? :measures, :measure_id
    add_index :measures, :measure_id, unique: true
  end
end
