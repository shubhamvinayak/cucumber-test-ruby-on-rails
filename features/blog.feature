Feature: Manage Articles
In order ro make a blog
As a author
I want to create and manage the Articles


Scenario: Article List
Given I have a article titled "The visitors", "shubham"
When I go to the list of articles
Then I should see "The visitors"
And I should see "shubham"

Scenario: Create a valid article
Given I have no article
And I am on the list of the articles 
When I follow "New Article"
And I fill in "Title" with "Spuds"
And I fill in "Description" with "Delicious potato wedges"
And I press "Create"
Then I should see "Article was successfully created"
And I should see "Spuds"
And I should see "Delicious potato wedges"
And I should have 1 article

