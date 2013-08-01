class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, #:recoverable, 
  :rememberable, :trackable, :validatable
  
  	# Setup accessible (or protected) attribute for your model
  	attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :provider, :uid, :as => [:default, :admin]
	# attr_accessible :title, :body

has_many :datum
end
