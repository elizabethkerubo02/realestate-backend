class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.string :review
      t.integer :house_id

      t.timestamps
    end
  end
end
