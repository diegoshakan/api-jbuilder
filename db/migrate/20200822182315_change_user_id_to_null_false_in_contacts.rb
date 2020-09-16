class ChangeUserIdToNullFalseInContacts < ActiveRecord::Migration[6.0]
  def change
    change_column_null :contacts, :user_id, false
  end
end
