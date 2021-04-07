json.extract! user, :id, :first_name, :last_name, :contacts

json.url api_v1_user_url(user, format: :json)
