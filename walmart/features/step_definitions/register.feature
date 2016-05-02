Feature: TV

    Scenario: Buy a TV
        Given I go to the Wallmart page
        When I fill the search field
        And click on the 'search' button
        Then show all the results for the search
        And click on the result for the TV
        Then open the page correctly
        And click on add to cart
        Then the product is added
        And open login page
        Then Show login page
        And Realize Login
        Then login sucessfull
