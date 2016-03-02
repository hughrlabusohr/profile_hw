class UserProfile
  def initialize(user_name: nil)
    @user_name=HTTParty.get("https://api.github.com/users/#{user_name}/repos").first
  end

  def get_project
    projects=[]
    @user_name["name"].each do |project|
      projects << project
    end
  end
  def get_project_url
    project_urls=[]
    @user_name["html_url"].each do |urls|
      project_urls << urls
    end
  end
  def get_project_description
    project_description=[]
    @user_name["description"].each do |description|
      project_descriptions << description
    end
  end
  def get_project_language
    project_language=[]
    @user_name["language"].each do |language|
      project_languages << language
  end
  end

end
