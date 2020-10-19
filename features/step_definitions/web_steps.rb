Given('I have a article titled {string}, {string}') do |article1, article2|
 Article.create(title: article1)
 Article.create(title: article2)
end

When('I go to the list of articles') do
  visit articles_path
end

Then('I should see {string}') do |article|
  page.should have_content(article)
end

Given('I have no article') do
  Article.delete_all
end

Given('I am on the list of the articles') do
  visit articles_path
end

When('I follow {string}') do |arg1|
  click_link arg1
end

When('I fill in {string} with {string}') do |field, value|
  #fill_in(field, with:value)
  fill_in field,	with: value 
end

When('I press {string}') do |string|
  click_button(string)
end

Then('I should have {int} article') do |count|
  Article.count.should == count.to_i
end