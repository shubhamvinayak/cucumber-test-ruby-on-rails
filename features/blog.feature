Feature: Simple crud operation using Blogs
Scenario: Should be able to create a new Blog
Given I am on the new Blog page
And I fill in "blog_name" with "India"
And I fill in "blog_description" with "India is my country"
When I press "Create Blog"
Then I should see "Blog was successfully created."

Scenario: Should be able read a existing Blog
Given I am on the blogs page
When I clicked on "Show" link within "tr#blog_0"
And I should see "India"
Then I should see "India is my country"

Scenario: Should be able to update the existing blog
Given I am on the blogs page
When I clicked on "Edit" link within "tr#blog_0"
And I fill in "blog_name" with "USA"
And I fill in "blog_description" with "USA is not my country"
When  I press "Update Blog"
Then I should see "Blog was successfully updated."

Scenario: Should be able to delete a blog
Given I am on the blogs page
When I clicked on "Destroy" link within "tr#blog_0"
And I confirm popup
Then I should see "Blog was successfully deleted."