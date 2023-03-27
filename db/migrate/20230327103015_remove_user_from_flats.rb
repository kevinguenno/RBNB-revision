class RemoveUserFromFlats < ActiveRecord::Migration[7.0]
  def change
    remove_reference :flats, :user, null: false, foreign_key: true
  end
end
