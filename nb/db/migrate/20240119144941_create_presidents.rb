class CreatePresidents < ActiveRecord::Migration[7.1]
  def change
    create_table :presidents do |t|
      t.string :name
      t.text :comment
      t.string :image_url

      t.timestamps
    end
  end
end
