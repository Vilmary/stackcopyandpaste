class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
   
   validates :username, presence: true, uniqueness: true
   validates :firstname, presence: true 
   validates :lastname, presence: true
   validates :email, presence: true
   



def name
      firstname + ' ' + lastname
end
has_many :posts
end