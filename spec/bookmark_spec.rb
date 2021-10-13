require "bookmark"

RSpec.describe Bookmark do
  describe "#all" do
    it "returns all bookmarks" do
      connect = PG.connect(dbname: 'bookmark_manager_test')

      connect.exec("INSERT INTO bookmarks (url) VALUES('https://www.google.co.uk/');")
      connect.exec("INSERT INTO bookmarks (url) VALUES('https://makers.tech/');")
      
      bookmarks = Bookmark.all

      expect(bookmarks).to include("https://www.google.co.uk/")
      expect(bookmarks).to include("https://makers.tech/")
    end
  end
end
