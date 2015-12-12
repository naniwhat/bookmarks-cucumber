Given(/^Open the homepage$/) do
  @homepage = HomePage.new
  @homepage.load
  sleep 2
end

Given(/^Search "([^"].*)"$/) do | search_content |
  @homepage.search search_content
  sleep 2
end

Given(/^Have (\d+) result$/) do | expect |
  expect(@homepage.searchResult).to eq expect.to_i
end
