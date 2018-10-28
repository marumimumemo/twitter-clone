class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|

      t.timestamps           null: false
      t.string :image
      t.references :tweet,   null: false, foreign_key: true, index:true
    end
  end
end
