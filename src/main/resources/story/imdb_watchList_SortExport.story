Scenario: Sort and Export the watchList
Meta:
@group: IMDB group
@layout desktop

When I set browser command line arguments to `--disable-notifications`
Given I am on a page with the URL 'https://www.imdb.com/'
When I click on element located `By.xpath(//div[contains(text(),'Sign In')])`
When I click on element located `By.xpath(//span[contains(text(),'Sign in with Google')])`
When I enter 'satya.sn1638@gmail.com' in a field with the name 'Email or phone'
!-- When I click on a button with the name 'Next'
When I click on all elements located `By.xpath(//span[contains(text(),'Next')])`
