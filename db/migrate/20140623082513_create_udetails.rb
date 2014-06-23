class CreateUdetail< ActiveRecord::Migration
  def change
    create_table :udetail do |t|
      t.string :FirstName
      t.string :Lastname
      t.date :DateOfBirth
      t.string :Address
      t.string :Mobileno
      t.string :sex
      t.string :skills
      t.timestamps
    end
  end
end
