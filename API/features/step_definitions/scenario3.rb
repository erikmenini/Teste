Given (/^i go to the API$/) do
  @resut = httparty.get("http://jsonplaceholder.typicode.com")
end

When (/^i search for an absent ID post$/) do
  @params = {
    ID: '19877'
  }
And (/ˆsearch for the absent post$/)do
  response = httparty.post ('http://jsonplaceholder.typicode.com',@params)
end

Then (/^return error 404$/) do
  response.get("http://jsonplaceholder.typicode.com", error 404)
end
