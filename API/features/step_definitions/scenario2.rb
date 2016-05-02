Given (/^i go to the API$/) do
  @resut = httparty.get("http://jsonplaceholder.typicode.com")
end

When (/^i inform the ID post$/) do
  @params = {
    ID: '1'
  }
And (/ˆsearch the post$/)do
  response = httparty.post ('http://jsonplaceholder.typicode.com',@params)
end

Then (/^return the details$/) do
  response.get("http://jsonplaceholder.typicode.com", @params)
end
