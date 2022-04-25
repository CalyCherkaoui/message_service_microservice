class CreateNotifications < ActiveRecord::Migration[7.0]
  def change
    create_table :notifications do |t|
      t.string :phone
      t.text :body
      t.string :source_app

      t.timestamps
    end
  end
end
