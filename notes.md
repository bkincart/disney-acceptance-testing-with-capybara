1. Bundle
2. Rename file (`user_adds_movies_spec.rb`), fill out story and criteria
3. Move up `create` test block and update with happy path
4. Delete the other test blocks
  **Release Year: 1953, Runtime: 76 minutes**
5. Run test - failure - create `index.erb` page with header “Movies I’ve Watched”
6. Run test - failure - add “Add a Movie” **link**
7. Run test - failure - add get `“movies/new”` route
8. Run test - failure - add `new.erb` page with header “Enter your Movie Details”
9. Run test - failure - add **form** with `title` field
10. Run test - failure - add `release_year` field
11. Run test - failure - add `runtime` field
12. Run test - failure - add `submit` button
13. Also need post `“/movies/new”` route! Add empty route
14. Insert `binding.pry` to look at params
15. Set variables to params (title, release_year, runtime)
16. Write to CSV:
  ```
	CSV.open(csv_file, “a”, headers: true) do |csv|
		csv << [title, release_year, runtime]
	end
  ```
17. Talk through `csv_file` helper method. Also mention `reset_csv` helper method
18. Redirect `“/movies”`
19. Run test - failure. Looks like form is all set up
	Need to show our movies on the page
	**Add movies to `index.erb`**
20. PASSING TEST!
21. Sad path! User leaves a field blank, expect to have error
22. Run test - note that Peter Pan is showing many times! Want to clear out CSV between each test.
	```
  before(:each) do
		reset_csv
	end
  ```
23. Run test - failure - In `server.rb`, add if statement to post using `.include?`
24. Note that you want to **render the erb template instead of redirect**!
	*This is because HTTP is a stateless protocol, so you would lose the error if you redirected.*
25. Also note that you could validate each individual field
26. Run test - see that correct page is rendering but error not showing
	Add error to `new.erb` template
27. Run test - PASSING TEST!
