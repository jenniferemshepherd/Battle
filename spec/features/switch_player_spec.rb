feature 'switch players' do
  scenario 'switch button switches to player 2 (Chris)' do
    sign_in_and_play
    click_button("Switch players")
    expect(page).to have_content("It's Chris's turn")
    expect(page).not_to have_content("It's Jennifer's turn")
  end
end
