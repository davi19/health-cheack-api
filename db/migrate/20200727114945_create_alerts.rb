class CreateAlerts < ActiveRecord::Migration[6.0]
  def change
    create_table :alerts do |t|
      t.string :name
      t.time :starthour
      t.time :endhour
      t.integer :interval

      t.timestamps
    end
  end
end
