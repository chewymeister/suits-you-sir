require 'spec_helper'

feature "Visiting the Homepage" do
  scenario "User visits homepage for the first time" do
    visit root_path

    expect(current_path).to eq root_path
  end
end
