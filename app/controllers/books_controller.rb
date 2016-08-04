class BooksController < ApplicationController
  include HTTParty
  def new
    response = HTTParty.get("http://www.example.org/?json=get_recent_posts");
    @output = response.response
  end

  def create
  end

  def edit
  end

  def update
  end

  def index
    response = HTTParty.get("/books");
    puts response
  end

  def show
  end

  def destroy
  end
end
