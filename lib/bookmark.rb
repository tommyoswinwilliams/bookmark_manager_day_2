require 'pg'

class Bookmark
  def self.all
    connect = connection
    rows = connect.exec "SELECT * FROM bookmarks"
    return rows.map { |bookmark| {url: bookmark["url"], title: bookmark["title"]} }
  end

  def self.add(url, title)
    connect = connection
    connect.exec "INSERT INTO bookmarks (url, title) VALUES('#{url}', '#{title}')"
  end

  def self.connection
    db_name = ENV['ENVIRONMENT'] == 'test' ? 'bookmark_manager_test' : 'bookmark_manager'
    return PG.connect(dbname: db_name)
  end
end
