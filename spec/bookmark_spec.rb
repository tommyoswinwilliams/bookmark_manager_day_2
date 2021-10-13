require "bookmark"

RSpec.describe Bookmark do
  describe "#all" do
    it "returns all bookmarks" do
      connect = PG.connect(dbname: 'bookmark_manager_test')

      connect.exec("INSERT INTO bookmarks (url, title) VALUES('https://www.google.co.uk/', 'Google Homepage');")
      connect.exec("INSERT INTO bookmarks (url, title) VALUES('https://makers.tech/', 'Makers Website');")
      
      bookmarks = Bookmark.all

      expect(bookmarks).to include({url: 'https://www.google.co.uk/', title: 'Google Homepage'})
      expect(bookmarks).to include({url: 'https://makers.tech/', title: 'Makers Website'})
    end
  end

  describe "#add" do
    it "adds a new bookmark to the db" do
      Bookmark.add('frontendowl.com', 'Front End Owl')
      expect(Bookmark.all).to include({url: 'frontendowl.com', title: 'Front End Owl'})
    end
  end
end
