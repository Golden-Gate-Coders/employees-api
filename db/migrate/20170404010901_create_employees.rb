class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.date :birthdate
      t.string :email
      t.string :ssn

      t.timestamps
    end
  end
end
