class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.json :payload

      t.timestamps
    end
  end
end
