Given (/^I go to walmart page$/) do
 visit 'https://www.walmart.com.br'
end

When (/^I fill the search field$/) do
  fill_in ‘suggestion-search’, :with=> “Televisão”
end

And (/^click on the 'search' button$/) do
  click_button 'search-icon'
end

Then (/^show all the results for the search$/) do
  expect(page).to have_no_content '0 Resultados'
end

And (/ˆclick on the result for the TV$/) do
  click_button 'product-title'
end

Then (/^open the page correctly$/) do
  expect(page).to have_content 'TV LED'
end

And (/^click on add to cart$/)  do
  click_button 'text'
end

Then (/^The product is added$/) do
  expect(page).to have_content 'Meu Carrinho (1 Item)'
end

And (/^Open login page$/) do
  click_button 'icon'
end

Then (/^Open login page$/) do
  expect(page).to have_content 'Entrar'
end

And (/^Realize login$/) do
  fill_in signinField :with => "teste0988@gmail.com"
  fill_in password :with => "12345678"
  click_button 'btn-warning btn-sign-up'
end

Then (/^login sucessfull$/) do
  expect(page).to have_content 'Walmart'
end
