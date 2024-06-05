class User < ApplicationRecord
  #se apagr o usuarios consequentemente ira apagar seu artigos
  has_many :articles, dependent: :destroy
  # Include default devise modules. Others available are:
  # , :lockable, :timeoutable,  and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable, :trackable,
         :recoverable, :rememberable, :validatable
end
