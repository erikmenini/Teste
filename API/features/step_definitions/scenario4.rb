
Given (/^i go to the API$/) do
  httparty.get("http://jsonplaceholder.typicode.com")
end

When (/^i fill the title, body and user ID$/) do
  @params = {
    title : 'teste'
    body: 'Teste'
    ID: '1'
  }
end
And (/ˆcreate a new post$/)do
  @result = httparty.post("http://jsonplaceholder.typicode.com", @params )
end

Then (/^ create the post$/) do
  esponse.get("http://jsonplaceholder.typicode.com", success)
end
