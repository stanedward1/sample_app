class CreateEta < ActiveRecord::Migration[6.1]
  def change
    create_table :eta do |t|
      t.string :country
      t.string :hours
      t.json :working_hours

      t.timestamps
    end
  end
end
