class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :u_id
      t.string :b_id
      t.text :content
      t.datetime :date

      t.timestamps null: false
    end
  end
end
