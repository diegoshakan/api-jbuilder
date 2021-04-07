# == Route Map
#
#                                Prefix Verb   URI Pattern                                                                              Controller#Action
#                  api_v1_user_contacts GET    /api/v1/users/:user_id/contacts(.:format)                                                api/v1/contacts#index
#                                       POST   /api/v1/users/:user_id/contacts(.:format)                                                api/v1/contacts#create
#                   api_v1_user_contact GET    /api/v1/users/:user_id/contacts/:id(.:format)                                            api/v1/contacts#show
#                                       PATCH  /api/v1/users/:user_id/contacts/:id(.:format)                                            api/v1/contacts#update
#                                       PUT    /api/v1/users/:user_id/contacts/:id(.:format)                                            api/v1/contacts#update
#                                       DELETE /api/v1/users/:user_id/contacts/:id(.:format)                                            api/v1/contacts#destroy
#                          api_v1_users GET    /api/v1/users(.:format)                                                                  api/v1/users#index
#                                       POST   /api/v1/users(.:format)                                                                  api/v1/users#create
#                           api_v1_user GET    /api/v1/users/:id(.:format)                                                              api/v1/users#show
#                                       PATCH  /api/v1/users/:id(.:format)                                                              api/v1/users#update
#                                       PUT    /api/v1/users/:id(.:format)                                                              api/v1/users#update
#                                       DELETE /api/v1/users/:id(.:format)                                                              api/v1/users#destroy
#         rails_postmark_inbound_emails POST   /rails/action_mailbox/postmark/inbound_emails(.:format)                                  action_mailbox/ingresses/postmark/inbound_emails#create
#            rails_relay_inbound_emails POST   /rails/action_mailbox/relay/inbound_emails(.:format)                                     action_mailbox/ingresses/relay/inbound_emails#create
#         rails_sendgrid_inbound_emails POST   /rails/action_mailbox/sendgrid/inbound_emails(.:format)                                  action_mailbox/ingresses/sendgrid/inbound_emails#create
#   rails_mandrill_inbound_health_check GET    /rails/action_mailbox/mandrill/inbound_emails(.:format)                                  action_mailbox/ingresses/mandrill/inbound_emails#health_check
#         rails_mandrill_inbound_emails POST   /rails/action_mailbox/mandrill/inbound_emails(.:format)                                  action_mailbox/ingresses/mandrill/inbound_emails#create
#          rails_mailgun_inbound_emails POST   /rails/action_mailbox/mailgun/inbound_emails/mime(.:format)                              action_mailbox/ingresses/mailgun/inbound_emails#create
#        rails_conductor_inbound_emails GET    /rails/conductor/action_mailbox/inbound_emails(.:format)                                 rails/conductor/action_mailbox/inbound_emails#index
#                                       POST   /rails/conductor/action_mailbox/inbound_emails(.:format)                                 rails/conductor/action_mailbox/inbound_emails#create
#         rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#show
#                                       PATCH  /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#update
#                                       PUT    /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#update
#                                       DELETE /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#destroy
# rails_conductor_inbound_email_reroute POST   /rails/conductor/action_mailbox/:inbound_email_id/reroute(.:format)                      rails/conductor/action_mailbox/reroutes#create
#                    rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
#             rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#                    rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
#             update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#                  rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users do
        resources :contacts
      end
    end
  end
end
