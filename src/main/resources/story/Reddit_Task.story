!-- Scenario: Create an account
!-- Given I am on a page with the URL 'https://www.reddit.com/'
!-- When I click on element located `By.xpath(//header/div[1]/div[2]/div[1]/div[1]/a[2])`
!-- When I switch to a new window
!-- When I enter `test@gmail.com` in field located `By.xpath(//input[@id='regEmail'])`

Scenario: Perform search by searchbar
Given I am on a page with the URL 'https://www.reddit.com/'
When I enter `Indian food` in field located `By.xpath(//input[@id='header-search-bar'])`
When I click on element located `By.xpath(//div[@id='SearchDropdownContent']/a[@data-testid='search-trigger-item'])`
