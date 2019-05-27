class CreateMarks < ActiveRecord::Migration[5.2]
  def change
    create_table :marks do |t|
      t.integer :mark
      t.belongs_to :student, index: true
      t.belongs_to :subject, index: true
      t.timestamps
    end
  end
end
