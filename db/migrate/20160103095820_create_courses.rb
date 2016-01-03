class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :cid
      t.string :cname
      t.text :chour
      t.string :credit
      t.string :tname

      t.timestamps null: false
    end
  end
end
