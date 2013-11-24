class CustomFailure < Devise::FailureApp

  def redirect_url
    posts_path
  end

  # Redirect to root_url
  def respond
    if http_auth?
      http_auth
    else
      redirect_to root_url
    end
  end

end