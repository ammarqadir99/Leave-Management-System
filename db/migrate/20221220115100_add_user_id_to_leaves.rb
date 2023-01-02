class AddUserIdToLeaves < ActiveRecord::Migration[7.0]
  def change
    add_reference :leaves, :user, index: true
  end
end
