class CreateMeasures < ActiveRecord::Migration[5.1]
  def change
    create_table :measures do |t|
      t.string :measure_id
      t.text :body

      t.timestamps
    end
  end
end
