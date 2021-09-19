class AddReferenceTocategory < ActiveRecord::Migration[5.2]
  def change
    add_reference :categories, :category
  end
end
