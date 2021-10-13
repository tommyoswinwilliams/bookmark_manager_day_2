feature "Add new bookmark" do
  scenario "submit new bookmark" do
    visit ('/new')
    fill_in 'url', with: 'frontendowl.com'
    click_button 'Add'

    expect(page).to have_content 'frontendowl.com'
  end
end
