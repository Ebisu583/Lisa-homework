class CreateHomeworks < ActiveRecord::Migration[7.0]
  def change
    create_table :homeworks do |t|
      t.string :title
      t.text :description
      t.boolean :completed, default: false

      t.timestamps
    end
  end
end
