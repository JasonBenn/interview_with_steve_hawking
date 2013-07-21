class AddFilesToQuestions < ActiveRecord::Migration
  def change
  	add_column :questions, :audio_path, :string
  end
end
