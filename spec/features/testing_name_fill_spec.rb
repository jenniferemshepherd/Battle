feature 'Testing name fill' do
  scenario 'Can receive names' do
    visit('/')
    fill_in "name_1", :with => "Jennifer"
    fill_in "name_2", :with => "Chris"
      click_button "Submit"
    expect(page).to have_text("Jennifer vs Chris")
  end
end
