Feature: Manage Articles
In order ro make a blog
As a author
I want to create and manage the Articles


Scenario: Article List
Given I have a article titled "The visitors", "shubham"
When I go to the list of articles
Then I should see "The visitors"
And I should see "shubham"

