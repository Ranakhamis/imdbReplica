class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :description
      #t.integer :rating
      t.integer :awards
      t.text :news
      t.string :genre
      t.string :director
      t.string :actor
      t.datetime :date
      #add review also
      
      t.timestamps
    end
  end
end
