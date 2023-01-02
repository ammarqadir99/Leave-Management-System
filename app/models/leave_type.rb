class LeaveType < ApplicationRecord
    has_many :leaves, class_name: "Leave"
end
