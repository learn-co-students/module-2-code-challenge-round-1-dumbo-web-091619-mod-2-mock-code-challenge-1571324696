class Signups < ActiveRecord::Migration[5.2]
  def change
    create_table :signups do |t|
      t.belongs_to :camper
      t.belongs_to :activity
      t.integer :time

      t.timestamps
    end
  end
end
