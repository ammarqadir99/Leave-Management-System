class CreateLeaves < ActiveRecord::Migration[7.0]
  def change
    create_table :leaves do |t|
      t.integer :leave_id
      t.string :leave_type
      t.integer :leave_status
      t.date :leave_date
      t.text :leave_description
    #  t.timestamp :created_at
    #  t.timestamp :updated_at

      t.timestamps
    end
  end
end
