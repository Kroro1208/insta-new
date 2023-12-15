class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|

      t.timestamps
      t.references :user, null: false, forein_key: true
    end
  end
end
