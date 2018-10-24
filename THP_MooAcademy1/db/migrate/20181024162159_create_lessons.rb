class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    #Chaque lesson est associée a un cours (course_id, crée ici en index), possède un titre (title) et une description (body).
    create_table :lessons do |t|
      t.belongs_to :course, index: true
      t.string :title
      t.text :body
      t.timestamps
    end
  end
end
