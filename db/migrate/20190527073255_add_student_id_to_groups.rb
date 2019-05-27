class AddStudentIdToGroups < ActiveRecord::Migration[5.2]
  def change
  	 add_reference :groups, :student, index: true
  end
end
