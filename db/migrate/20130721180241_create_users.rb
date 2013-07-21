class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string  :uid
      t.string  :provider
      t.string  :name
      t.string  :screen_name

      t.timestamps
    end
  end
end
