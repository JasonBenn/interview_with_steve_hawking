class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.belongs_to :user
      t.belongs_to :question
      t.integer :rating
      t.integer :times_seen
      t.text :description
      t.timestamps
    end
  end
end
