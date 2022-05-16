Scenario: perform search by top search top bar & open the post page from search results.
When I set browser command line arguments to `--disable-notifications`
Given I am on a page with the URL 'https://www.reddit.com/'
When I enter `Indian Food` in field located `By.xpath(//input[@id='header-search-bar'])`
When I wait `PT10S` with `PT05S` polling until element located `By.xpath(//a[@aria-label='r/IndianFood'])` becomes VISIBLE
When I click on element located `By.xpath(//a[@aria-label='r/IndianFood'])`
When I wait `PT15S` with `PT05S` polling until element located `By.xpath(//h3[contains(text(),'indianfood')])` becomes VISIBLE
When I click on element located `By.xpath(//h3[contains(text(),'indianfood')])`
When I take screenshot
