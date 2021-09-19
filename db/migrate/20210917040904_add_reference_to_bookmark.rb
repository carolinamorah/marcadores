class AddReferenceToBookmark < ActiveRecord::Migration[5.2]
  def change
    add_reference :bookmarks, :type
    add_reference :bookmarks, :category
  end
end
