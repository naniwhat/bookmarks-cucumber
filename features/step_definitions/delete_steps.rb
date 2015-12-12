When(/^Delete "([^"]*)" with "([^"]*)"$/) do |arg1, arg2|
  @homepage.delBookmarks arg2
end

Then(/^Search "([^"]*)" again and get (\d+) result$/) do |content, result|
  @homepage.search content
  expect(@homepage.searchResult).to eq result.to_i
end
