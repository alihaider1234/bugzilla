class Ability
  include CanCan::Ability

  def initialize(user)
  	user ||= User.new 
  	# if user.user_type == "Manager"
  	# 	can :read, :all
  	# 	can :create, :all 
  	# 	can :manage, Bug do |bug|
  	# 		bug.try(:user) == user
  	# 	end
  	# 	can :update, Bug do |bug|
  	# 		bug.try(:user) == user
  	# 	end
  	# 	can :edit, Bug do |bug|
  	# 		bug.try(:user) == user
  	# 	end
  	# 	can :manage, Project 
  	# else #if user.user_type == "Developer" || user.user_type == "QA"
		 #  can :read, :all
		 #  can :create, Bug
		 #  can :update, Bug do |bugs|
  	# 		bugs && bugs.user == user
  	# 	end
  	# end
  end
end