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