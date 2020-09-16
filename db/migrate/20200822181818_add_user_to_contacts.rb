class AddUserToContacts < ActiveRecord::Migration[6.0]
  def change
    add_reference :contacts, :user, null: true, foreign_key: true
  end
end
