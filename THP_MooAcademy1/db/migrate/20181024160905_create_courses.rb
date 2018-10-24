class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    #chaque cours a un seul nom et une seule description
    create_table :courses do |t|
      t.string :name
      t.text :description
      t.timestamps
    end
  end
end
