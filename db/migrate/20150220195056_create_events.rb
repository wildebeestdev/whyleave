class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :address
      t.string :description
      t.datetime :start_date
      t.datetime :end_date
      t.integer :user_id
        
      t.timestamps
    end
  end
end
