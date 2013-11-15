json.array!(@contacts) do |contact|
  json.extract! contact, :first_name, :last_name, :title, :tags, :assigned_to, :email, :phone, :mobile_phone, :fax, :address1, :address2, :city, :state, :zip, :comments, :support_package, :company_id
  json.url contact_url(contact, format: :json)
end
