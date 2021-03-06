class Post < ActiveRecord::Base
  attr_accessible :content, :name, :title, :category_id
 
  validates :name,  :presence => true
  validates :title, :presence => true,
                    :length => { :minimum => 5 }

  has_many :comments, :dependent => :destroy
  belongs_to :category
  has_many :tags
  attr_accessible :tags_attributes
  accepts_nested_attributes_for :tags, :allow_destroy => :true,
    :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }
end