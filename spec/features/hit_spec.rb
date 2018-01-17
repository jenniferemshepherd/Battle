feature 'attack player' do
  scenario 'uses attack button' do
    sign_in_and_play
    click_button("Attack!")
    expect(page).to have_content("Chris has been struck!")
  end
end
