class CreateInquiries < ActiveRecord::Migration[6.0]
  def change
    create_table :inquiries do |t|
      t.string :name
      t.string :email
      t.string :content
      t.date :read_at

      t.timestamps
    end
  end
end
