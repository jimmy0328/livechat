class AddUserIdToMessage < ActiveRecord::Migration[5.0]
  def change
    add_column :messages, :user_id, :string
  end
end