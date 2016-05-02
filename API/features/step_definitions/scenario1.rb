
Given (/^Given i go to the API$/) do
  @result = httparty.get("http://jsonplaceholder.typicode.com")
end

When (/^When i access the API$/) do
  response = HTTParty.post("http://jsonplaceholder.typicode.com", :body=> formBody)
end

Then (/^Then return list$/) do
  response.get("http://jsonplaceholder.typicode.com", success)
end
