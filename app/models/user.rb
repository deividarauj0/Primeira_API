class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :auth_token, uniqueness: { case_sensitive: true }
  # validates_uniqueness_of :auth_token NÂO É MAIS USADO NO MODEL, MAS FUNCIONA NO TESTE
  before_create :generate_authentication_token!

  def info
    "#{email} - #{created_at} - Token: #{Devise.friendly_token}"
  end

  def generate_authentication_token!
    begin
      self.auth_token = Devise.friendly_token
    end while User.exists?(auth_token: auth_token)
  end

  ## O método #_02_#
  
  # attr_accessor :name

  # validates_presence_of :name

end
