class AddAttrToAdmin < ActiveRecord::Migration[5.2]
  def change
    self.up
      #add_column :tablename, :column_name, :column_type
      add_column :admins, :status, :string
      add_column :admins, :experience_year, :integer, default: 0
  end
end
