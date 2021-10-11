require "bookmark"

describe Bookmark do
  describe "#all" do
    it "returns all bookmarks" do
      bookmarks = Bookmark.all

      expect(bookmarks).to include("https://www.google.co.uk/")
      expect(bookmarks).to include("https://www.elsevier.com/en-gb")
      expect(bookmarks).to include("https://www.moogmusic.com/")
    end
  end
end
