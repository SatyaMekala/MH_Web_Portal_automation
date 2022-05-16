Scenarioe: Trello login and verfiy user

Given I am on a page with the URL 'https://trello.com/'
When I click on element located `By.xpath(//a[contains(text(),'Log in')])`
When I enter `satya.sn1638@gmail.com` in field located `By.xpath(//input[@id='user'])`
When I enter `SaiBaBa@Satya` in field located `By.xpath(//input[@id='password'])`
When I click on element located `By.xpath(//input[@id='login'])`
