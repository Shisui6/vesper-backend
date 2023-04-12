class RenameTypeToMake < ActiveRecord::Migration[7.0]
  def change
    rename_column :cars, :type, :make
  end
end
