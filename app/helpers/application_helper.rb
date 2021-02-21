module ApplicationHelper
  def notice_notification
    render inline: '<div class="notification"><p class="notice"><%= notice %></p></div>'.html_safe if flash[:notice]
  end

  def alert_notification
    render inline: '<div class="notification"><p class="alert"><%= alert %></p></div>'.html_safe if flash[:alert]
  end

  def buttons(var)
    if var
      render inline: '<p class="control">
      <%= link_to "Logout", destroy_user_session_path, method: :delete, class: "button" %>
      </p>'.html_safe
    else
      render inline: '<div style="display: flex">
      <p class="control">
        <%= link_to "Sign In", new_user_session_path, class: "button" %>
      </p>
      <p class="control">
        <%= link_to "Sign Up", new_user_registration_path, class: "button" %>
      </p>
      </div>'.html_safe
    end
  end
end
