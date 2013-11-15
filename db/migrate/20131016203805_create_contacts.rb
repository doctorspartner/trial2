class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :title
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
      t.integer :company_id

      t.timestamps
    end
  end
end
