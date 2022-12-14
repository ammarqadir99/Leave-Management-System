class CreateLeaves < ActiveRecord::Migration[7.0]
  def change
    create_table :leaves do |t|
      t.date :leave_from
      t.date :leave_to
      t.integer :leave_status # '0 for pending, 1 for approve, and 2 for rejected.'
     #t.date :date_of_leave
      t.date :approval_date
      t.text :remarks
      t.integer :user_id      # 'FK'
      t.integer :leave_type   # 'FK'

      t.timestamps
    end
  end
end