class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


         after_initialize do
           self.role ||= "standard"
         end

         def admin?
            role == 'admin'
         end
#            def ( PREMIUM AND STANDARD)
#           role == 'admin'
#           end
end
