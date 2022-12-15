class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :passengers do |t|
      t.string :name
      t.string :email
      t.bigint :booking_id
      t.timestamps
    end
  end
end
