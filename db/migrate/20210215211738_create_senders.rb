class CreateSenders < ActiveRecord::Migration[6.0]
  def change
    create_table :senders do |t|
      t.string :username
      t.string :password
      t.timestamps
    end
  end
end
