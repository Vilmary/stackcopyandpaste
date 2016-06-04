class Post < ActiveRecord::Base
     validates :title, presence: true
     validates :author, presence: true
     validates :category, presence: true, length: { minimum: 2} 
     validates :description, presence: true 
end
