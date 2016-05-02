Given (/^i go to the API$/) do
  httparty.get("http://jsonplaceholder.typicode.com")
end

When (/^the title of an existent post is informed$/) do
  @params = {
    Title = 'Teste'
  }
end
And (/ˆchange the post$/)do
  httparty.put("http://jsonplaceholder.typicode.com", @params )
end

Then (/^change the post$/) do
  response.get("http://jsonplaceholder.typicode.com", success)
end
