require "spec_helper"

feature "user adds a movie" do

  # User Story
  # ----------
  # As a user
  # I want to add a movie
  # So that I can keep track of all the wonderful Disney movies I've watched

  # Acceptance Criteria
  # -------------------
  # * I must enter a title
  # * I must enter a release year
  # * I must enter a runtime
  # * If I forget a field, errors are displayed
  # * ...

  before(:each) do
    reset_csv
  end

  context "create" do
    scenario "user adds a movie" do
      visit '/movies'

      click_link 'Add a Movie'

      expect(page).to have_content('Enter Movie Details')

      fill_in('Title', with: 'Peter Pan')
      fill_in('Release Year', with: '1953')
      fill_in('Runtime', with: '76 minutes')

      click_button 'Submit'

      expect(page).to have_content('Movies I\'ve Watched')
      expect(page).to have_content('Peter Pan')
    end

    scenario "the user forgets to fill in a field" do
      visit '/movies'

      click_link 'Add a Movie'

      fill_in('Title', with: 'Peter Pan')
      fill_in('Release Year', with: '1953')

      click_button 'Submit'

      expect(page).not_to have_content('Movies I\'ve Watched')
      expect(page).to have_content('Enter Movie Details')
      expect(page).to have_current_path('/movies/new')
      expect(page).to have_content('Please fill in all fields!')
    end
  end

  xcontext "pending specs" do

    context "read" do
      scenario "user views a thing" do

      end
    end

    context "update" do
      scenario "user edits a thing" do

      end
    end

    context "delete" do
      scenario "user deletes a thing" do

      end
    end
  end
end
