class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :title, limit: 10
      t.string :first_name, limit: 50
      t.string :middle_name, limit: 50
      t.string :last_name, null: false, limit: 50
      t.string :email, null: false, limit: 100
      t.datetime :birth_date
      t.string :gender, limit: 1
    end
  end
end
