class CreateAcademicAbilities < ActiveRecord::Migration[6.0]
  def change
    create_table :academic_abilities do |t|
      t.string :subject
      t.integer :score
      t.date :implementation_month
      t.integer :student_id

      t.timestamps
    end
  end
end
