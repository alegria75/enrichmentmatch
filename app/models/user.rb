class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :firstname, :lastname, :email, :password, :password_confirmation, :remember_me, :zipcode
  

  # Enforces presence of zip- or post-code on signup form
  # validates_presence_of :zipcode, :on => :update
  validates_length_of :zipcode, :minimum => 5, :allow_blank => false
  validates_presence_of :subject, :allow_blank => false
end
