json.extract! contact, :id, :phone, :email, :is_whatsapp, :user_id

json.user json.user, partial: "api/v1/users/user", as: :user