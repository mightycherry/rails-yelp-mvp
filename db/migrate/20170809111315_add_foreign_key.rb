class AddForeignKey < ActiveRecord::Migration[5.0]
  def change
    add_foreign_key :reviews, :restaurants
  end
end
