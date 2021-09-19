class Category < ApplicationRecord
  belongs_to :parent, class_name: 'Category', foreign_key: :category_id, optional: true 
  has_many :children, class_name: 'Category', dependent: :destroy
  has_many :bookmarks, dependent: :destroy

  validates :name, presence: true,  uniqueness: { case_sensitive: false }

  validates :name, uniqueness: { case_sensitive: false }

  def status_boolean
    if status == true
        'Privado'
    else
        'Publico'
    end
  end
end

