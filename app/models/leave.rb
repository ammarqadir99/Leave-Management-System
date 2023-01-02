class Leave < ApplicationRecord
#    self.table_name = 'my_leaves'
    belongs_to :user
    belongs_to :leave_type, :optional => true
end
