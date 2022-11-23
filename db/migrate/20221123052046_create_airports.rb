class CreateAirports < ActiveRecord::Migration[7.0]
  def change
    create_table :airports do |t|
      t.string :code, limit: 3
      t.string :name, limit: 70
      t.string :city, limit: 100
      t.string :state, limit: 100

      t.timestamps
    end
  end
end
