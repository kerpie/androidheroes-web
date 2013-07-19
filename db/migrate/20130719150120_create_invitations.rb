class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations do |t|
      t.string :mail

      t.timestamps
    end
  end
end
