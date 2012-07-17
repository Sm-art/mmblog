class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.string :meta_description

      t.timestamps
    end
  end
end
