class User < ApplicationRecord
<<<<<<< HEAD
<<<<<<< HEAD
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, presence: true, uniqueness: true


  enum currency_preference: { usd: 'USD', eur: 'EUR', gbp: 'GBP' }
=======
=======
>>>>>>> f53bf749b736d38e6649e3dac1fc0cf30cfbb74d
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :first_name, :last_name, presence: true


<<<<<<< HEAD
>>>>>>> f53bf749b736d38e6649e3dac1fc0cf30cfbb74d
=======
>>>>>>> f53bf749b736d38e6649e3dac1fc0cf30cfbb74d
end
