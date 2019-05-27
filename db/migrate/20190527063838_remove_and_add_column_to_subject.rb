class RemoveAndAddColumnToSubject < ActiveRecord::Migration[5.2]
  def change
  	remove_column :subjects, :subject
  	add_column :subjects, :name, :string
  end
end
