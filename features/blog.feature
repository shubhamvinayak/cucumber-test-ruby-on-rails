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

Scenario: Edit Article
Given I have a article titled "The visitors", "shubham"
And I am on the list of the articles
When I follow "Edit"
And I fill in "Title" with "Spuds edited"
And I fill in "Description" with "Delicious potato wedges edited"
And I press "Update Article"
Then I should see "Article was successfully updated"
And I should see "Spuds edited"
And I should see "Delicious potato wedges edited"
And I am on the list of articles
But I should not see "The visitors"

Scenario: Delete Article
Given I have a article titled "The visitors", "shubham"
And I am on the list of the articles
And I have articles
When I press first "Destroy"
Then I should see "Article was successfully destroyed"
And I should see "shubham"
And I should not see "The visitors"
And I should have 1 article
