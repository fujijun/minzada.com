class AddNameAndUniversityAndMajorAndCareerToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :university, :string
    add_column :users, :major, :string
    add_column :users, :career, :text
  end
end
