class AddReferenceToTeacherId < ActiveRecord::Migration[6.0]
  def change
    add_reference :subjects, :teacher, foreign_key: true
  end
end
