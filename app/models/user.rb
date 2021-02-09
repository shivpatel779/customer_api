# frozen_string_literal: true

class User < ActiveRecord::Base
  extend Devise::Models #added this line to extend devise model
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,:recoverable, :rememberable, :trackable, :validatable
	include DeviseTokenAuth::Concerns::User
   
  def branch_manager_user
   	self.role_id == 2
  end

  def customer_user
   	self.role_id == 1
  end

end
