class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.text :question
      t.text :answer
      t.integer :subcategory_id
      t.timestamps
    end
  end
end
