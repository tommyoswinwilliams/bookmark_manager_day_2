feature "view bookmarks" do
  scenario "user will view all bookmarks saved" do
    connect = PG.connect(dbname: 'bookmark_manager_test')

    connect.exec("INSERT INTO bookmarks (url) VALUES('https://www.bbc.co.uk/');")
    connect.exec("INSERT INTO bookmarks (url) VALUES('https://makers.tech/');")

    visit("/bookmarks")
    expect(page).to have_content("https://www.bbc.co.uk/")
    expect(page).to have_content("https://makers.tech/")
  end
end
