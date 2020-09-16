json.extract! contact, :id, :phone, :email, :is_whatsapp
json.url api_v1_contact_url(contact, format: :json)
json.user do
  json.id contact.user.id
  json.first_name contact.user.first_name
  json.last_name contact.user.last_name
  json.age contact.user.age
end

# json.array! @contacts do |contact|
#   json.id contact.id
#   json.phone contact.phone
#   json.email contact.email
#   json.is_whatsapp contact.is_whatsapp
#   json.url api_v1_contact_url(contact, format: :json)

#   json.user do
#     json.id contact.user.id
#     json.first_name contact.user.first_name
#     json.last_name contact.user.last_name
#     json.age contact.user.age
#   end

#   #   json.first_name user.first_name
#   #   json.last_name user.last_name
#   #   json.age user.age

# end