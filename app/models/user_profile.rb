class UserProfile
  def initialize(user_name: nil)
    @user_name=HTTParty.get("https://api.github.com/users/#{user_name}/repos")
  end

  def get_project
    
  end
end
