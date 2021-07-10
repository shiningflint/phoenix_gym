defmodule GymWeb.PageView do
  use GymWeb, :view
  alias Gym.CMS

  def author_name(%CMS.Page{author: author}) do
    author.user.name
  end
end
