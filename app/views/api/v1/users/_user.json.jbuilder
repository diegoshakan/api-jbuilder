json.extract! user, :id, :first_name, :last_name
json.contacts user.contacts, partial: "api/v1/contacts/contact", as: :contact

json.url api_v1_user_url(user, format: :json)
