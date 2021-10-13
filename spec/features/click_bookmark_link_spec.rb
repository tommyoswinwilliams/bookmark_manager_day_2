feature 'Click a bookmark link' do
  scenario 'Clink link and link webpage opens in browser' do
    Bookmark.add('https://www.bbc.co.uk/', 'BBC')
    visit("/bookmarks")
    click_on 'BBC'
    expect(page.current_url).to eq("https://www.bbc.co.uk/")
  end
end