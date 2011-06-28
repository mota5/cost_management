class User < ActiveRecord::Base
  has_many :costs
  
  validate :login_code, :presennce=>true
  validate :login_passwd, :presennce=>true
  validate :family_name, :presennce=>true
  validate :first_name, :presennce=>true
end
