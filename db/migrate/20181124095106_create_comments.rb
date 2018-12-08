class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|

      t.timestamps           null: false
      t.text :body,          null: false
      t.references :user,    null: false, foreign_key: true, index:true
      t.references :tweet,   null: false, foreign_key: true, index:true
    end
  end
end
