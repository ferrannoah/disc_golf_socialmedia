class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :address
      t.integer :length, :default => 18
      t.integer :h1, :default => 3
      t.integer :h2, :default => 3
      t.integer :h3, :default => 3
      t.integer :h4, :default => 3
      t.integer :h5, :default => 3
      t.integer :h6, :default => 3
      t.integer :h7, :default => 3
      t.integer :h8, :default => 3
      t.integer :h9, :default => 3
      t.integer :h10, :default => 3
      t.integer :h11, :default => 3
      t.integer :h12, :default => 3
      t.integer :h13, :default => 3
      t.integer :h14, :default => 3
      t.integer :h15, :default => 3
      t.integer :h16, :default => 3
      t.integer :h17, :default => 3
      t.integer :h18, :default => 3

      t.timestamps
    end
  end
end
