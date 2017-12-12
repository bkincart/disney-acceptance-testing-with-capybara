1. Rename test file and update test and user story
2. Write first test for adding a movie
3. Run test: can't find file, make `index.erb` and code it accordingly.
4. Error is unclear but we need a path and erb template for our movie
5. Add our form and click button - nothing happens!
6. Need a post: put a pry in POST and see what params are
7. Add to CSV file and remember to redirect
8. Doesn't have content: save_and_open_page
9. Add `<ul>` to page and rerun tests. Why do we have so many Peter Pans??
10. ```
before(:each) do
  reset_csv
end
```
11. Sad path: `"user leaves a field blank"`
  to have_content(error)
  not_to have_content(movie title)
  option: expect(page).to have_current_path(expected_path)
12. Set up errors and talk through re-rendering VS redirecting
13. Also talk through validating specific fields
