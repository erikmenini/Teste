Given (/^i go to the API$/) do
  httparty.get("http://jsonplaceholder.typicode.com")
end

When (/^the ID is informed$/) do
  @params = {
    ID = '2'
  }
end
And (/ˆdelete the post$/)do
  httparty.delete("http://jsonplaceholder.typicode.com", @params )
end

Then (/^$/) do
  response.get("http://jsonplaceholder.typicode.com", success)
end
