Scenarioe: Trello sign up
Given I am on a page with the URL 'https://trello.com/'
When I click on element located `By.xpath(//a[contains(text(),'Sign up')])`
When I click on element located `By.xpath(//span[contains(text(),'Continue with Google')])`
When I wait `PT10S` for debug
When I enter `satya.sn1638@gmail.com` in field located `By.xpath(//input[@type='email'])`
When I click on element located `By.xpath(//span[contains(text(),'Next')])`
When I enter `SaiBaba@Satya` in field located `By.xpath(//input[@type='password'])`
When I click on element located `By.xpath(//span[contains(text(),'Next')])`
