feature "test index page" do
  scenario "visit page and get hello world" do
    visit("/")
    expect(page).to have_content("Hello world!")
  end
end
