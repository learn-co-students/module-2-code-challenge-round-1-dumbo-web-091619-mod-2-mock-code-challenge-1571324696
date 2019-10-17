class RemoveNameFromSignup < ActiveRecord::Migration[5.2]
  def change
    remove_column :signups, :name, :string
  end
end
