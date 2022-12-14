class CreateLeaveTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :leave_types do |t|
      t.string :leave_name
      t.boolean :paid_unpaid
      t.integer :days_allowd
      t.text :remarks

      t.timestamps
    end
  end
end
