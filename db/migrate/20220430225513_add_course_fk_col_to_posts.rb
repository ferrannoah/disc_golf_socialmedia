class AddCourseFkColToPosts < ActiveRecord::Migration[6.1]
  def change
    add_reference :posts, :course, foreign_key: true
  end
end
