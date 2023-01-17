class CreateWeathers < ActiveRecord::Migration[7.0]
  def change
    create_table :weathers do |t|
      t.float :temperature, null: false
      t.datetime :time, null: false

      t.timestamps
    end
  end
end
