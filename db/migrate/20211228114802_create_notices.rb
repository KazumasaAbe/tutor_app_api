class CreateNotices < ActiveRecord::Migration[6.0]
  def change
    create_table :notices do |t|
      t.string :title
      t.string :text
      t.string :notice_image
      t.string :destination

      t.timestamps
    end
  end
end
