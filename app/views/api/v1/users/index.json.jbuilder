# json.content format_content(@message.content)
# json.(@message, :created_at, :updated_at)

# json.users do
#   json.first_name @user.first_name
#   json.last_name @user.last_name
#   json.age @user.age
# end

json.array! @users do |user|
  json.id user.id
  json.first_name user.first_name
  json.last_name user.last_name
  json.age user.age

  json.contacts user.contacts do |contact|
    json.id contact.id
    json.phone contact.phone
    json.email contact.email
    json.is_whatsapp contact.is_whatsapp
  end
end

