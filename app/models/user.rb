class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :auth_token, uniqueness: { case_sensitive: true }
  # validates_uniqueness_of :auth_token NÂO É MAIS USADO

  def info
    "#{email} - #{created_at}"
  end

  ## O método #_02_#
  
  # attr_accessor :name

  # validates_presence_of :name

end
