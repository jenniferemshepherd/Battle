def sign_in_and_play
  visit('/')
  fill_in "name_1", :with => "Jennifer"
  fill_in "name_2", :with => "Chris"
  click_button "Submit"
end

def knock_out
  9.times do
    click_button("Attack!")
    click_button("Next move...!")
  end
  click_button("Attack!")
end
