class User < ActiveRecord::Base
  attr_accessible :id, :is_admin, :password
end
