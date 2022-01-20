class CreateAcademicAbilities < ActiveRecord::Migration[6.0]
  def change
    create_table :academic_abilities do |t|
      t.integer :national_language
      t.integer :arithmetic
      t.integer :science
      t.integer :english
      t.integer :society

      t.date :implementation_month
      t.integer :student_id

      t.timestamps
    end
  end
end
