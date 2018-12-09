class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|

      t.timestamps           null: false
      t.references :user,    null: false, foreign_key: true, index:true
      t.references :tweet,                foreign_key: true, index:true
    end
  end
end
