json.array!(@companies) do |company|
  json.extract! company, :company_name, :tags, :assigned_to, :email, :phone, :mobile_phone, :fax, :address1, :address2, :city, :state, :zip, :comments, :support_package
  json.url company_url(company, format: :json)
end
