class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.string :body
      t.integer :user_id
      t.integer :blog_id

      t.timestamps
    end
  end
end
