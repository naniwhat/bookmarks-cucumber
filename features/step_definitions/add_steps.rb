Given(/^Search "([^"]*)" and get (\d+) result$/) do |content, result|
  @homepage.search content
  expect(@homepage.searchResult).to eq result.to_i
end

When(/^add "([^"]*)" and "([^"]*)" and click add$/) do |title, url|
  @homepage.addBookmarks title, url
end

Then(/^search "([^"]*)" again and get (\d+) result$/) do |content, result|
  @homepage.search content
  sleep 2
  expect(@homepage.searchResult).to eq result.to_i
end


