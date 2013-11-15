class ChangeCompanyZipToInteger < ActiveRecord::Migration
  def change
    change_column :companies, :zip, :integer
  end
end
