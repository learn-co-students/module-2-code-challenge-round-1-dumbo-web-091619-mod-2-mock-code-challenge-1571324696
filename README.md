## What we want to work on
- Read the README - figuring out how to translate the deliverable, strategies for breaking it down
- Collection select
- Validations
- link_to 
- redirecting to a page using associations

## The Domain
Congratulations! You have been hired by Access Camp and for your first job, you have been tasked with building out a website to log campers with their activities.

A `camper` can participate in many `activities` and an `activity` can have many `campers` participating in it.

Camper >- Activities
Activity -< Campers

Visiting `/campers` will show the index page of all the campers and visiting `/activities` will go to the index page for all the `activities`.
Currently, we don't have any way to associate the two, so consider the relationship and think about how a `camper` can `signup` for an `activity`!

## The Deliverables

1. To log a camper with an activity, we need to store some additional information in our database. 

<!-- Make the necessary updates to our database, so that **a `camper` can have many `activities`** and **an `activity` can have many campers**.  -->
<!-- - create a signup in the database (migration) -->
<!-- - create associations on the model -->

<!-- The `signup` should also include a time (as an integer) that is between 0 and 23, referring to the hour of the activity. -->
<!-- - signup needs a time attribute -->
<!-- - signup time needs validation, between 0 and 23 -->
- display the validation to the user


<!-- 2. As a user, I should be able to go to the index page of the `campers` and click on the names to go to the show page for that `camper`. -->
<!-- - check the index page, make sure it displays all the campers -->
<!-- - link camper to the show page -->

<!-- The show page should show the `camper's` name, their age and the list of activities that they have signed up for. -->


<!-- 3. As a user, I should be able to go to the index page of the `activities` and click on the name of the activity to go to the show page for that `activity`.  -->
<!-- - go to the index page for activities, make sure it works! -->
<!-- - make links for each activity to the show page -->

<!-- The show page should show the `activity's` name and its difficulty level. -->

4. As a user, I should be able to fill out a form to create a new `signup` that will associate a `camper` with an `activity`. 
<!-- - Create a signup
  - routes for create (:new, :create)
  - controller for those routes
  - view for the new -->


I should be able to choose an existing `activity`, choose an existing `camper` and add a time. 
<!-- - select existing camper and activity, collection_select
- Make a form! -->

Upon a successful creation, I should be redirected to the `camper's` show page.
<!-- - check if we're able to successfully create a signup -->
<!-- - if yes, redirect to show page for a camper -->
<!-- - if not, display the validation -->

5. As a user, I should be able to fill out a form to create a new `camper`, with their names and age!
- Create new camper
  - routes
  - controller
  - view



### Hints / Tips

+ Remember we want to be RESTful. What URL should show info about a particular camper? What URL should show a form to create a signup? What controller actions are associated?  
