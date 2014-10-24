class AddStatusToStudents < ActiveRecord::Migration
  def change
    add_column :students, :gender, :string
    add_column :students, :class, :string
    add_column :students, :status, :integer
  end
end
