class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :company_name
      t.string :tags
      t.string :assigned_to
      t.string :email
      t.string :phone
      t.string :mobile_phone
      t.string :fax
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip
      t.text :comments
      t.string :support_package

      t.timestamps
    end
  end
end
