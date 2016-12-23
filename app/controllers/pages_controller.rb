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

  def nganluong_94a51a851faa0342017fe5f993620d30

  end
end