module PostsHelper
  def useless_helper(var)
    if var
      render inline: "<div><h2>Create your post!</h2><%= link_to 'New Post', new_post_path, class: 'button' %></div>".html_safe
    end
  end
end
