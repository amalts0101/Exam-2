class AddGroupIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :students, :group, index: true
    remove_column :marks, :student_id
    remove_column :marks, :subject_id
   end
end
