class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.integer :teacher_id
      t.integer :student_id

      t.timestamps
    end
  end
end
