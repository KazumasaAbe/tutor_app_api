class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.string :speaker
      t.string :content
      t.string :room_name
      t.integer :teacher_id
      t.integer :student_id
      t.integer :room_id

      t.timestamps
    end
  end
end
