class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :description
      # add_column :articles, :description, :string

      t.timestamps
    end
  end
end
