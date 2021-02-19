module ApplicationHelper
  def notice_notification
    render inline: '<div class="notification"><p class="notice"><%= notice %></p></div>'.html_safe if flash[:notice]
  end

  def alert_notification
    render inline: '<div class="notification"><p class="alert"><%= alert %></p></div>'.html_safe if flash[:alert]
  end
end
