class PagesController < ApplicationController
  def home
    if current_user
      redirect_to tasks_path
    end
  end

  def about 
  end

  def test
  end
end

class BooksController < ApplicationController
    load_and_authorize_resource
    def show
    # @book is already loaded and authorized
    end
end
<% if can? :update, @book %>
<%= link_to “Edit”, edit_article_path(@book) %>
<% end %>
<p style="margin-bottom: 0.1in; border: 1px solid #cccccc; padding: 0.1in 0.1in 0.1in 30px; line-height: 100%; background: #272822;"><span style="font-family: 'Courier New', serif;"><span style="font-size: small;"><span style="color: #ffffff;"><span style="font-family: Consolas, serif;"><span style="font-size: xx-small;"><b><span style="background: #777777;">Code
</span></b></span></span></span></span></span><span style="font-family: 'Courier New', serif;"><span style="font-size: small;"><span style="color: #ffffff;"><span style="font-family: Consolas, serif;">&lt;% <span style="color: #f92665;">if</span> can? <span style="color: #ae6aac;">:update</span>, @book %&gt;
&lt;%= link_to <span style="color: #e6d150;">"Edit"</span>, <span style="color: #a6e22e;">edit_article_path</span>(@book) %&gt;
&lt;% <span style="color: #f92665;">end</span> %&gt;
</span></span></span></span></p>