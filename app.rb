require "sinatra"
require "sinatra/reloader"

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get "/" do
    "Hello world!"
  end

  get "/bookmarks" do
    bookmarks = ["https://www.google.co.uk/", "https://www.elsevier.com/en-gb", "https://www.moogmusic.com/"]
    bookmarks.join(", ")
  end
end
