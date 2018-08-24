class CreateWxUsers < ActiveRecord::Migration
  def change
    create_table :wx_users do |t|
      t.string :name
      t.string :mobile
      t.string :wx_name
      t.string :money

      t.timestamps null: false
    end
  end
end
