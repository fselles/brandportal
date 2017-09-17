class AddcontactpersontoTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :contactperson, :string
  end
end
