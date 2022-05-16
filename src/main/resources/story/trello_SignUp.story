Scenarioe: Trello sign up
Given I am on a page with the URL 'https://trello.com/'
When I click on element located `By.xpath(//a[contains(text(),'Sign up')])`
When I click on element located `By.xpath(//span[contains(text(),'Continue with Google')])`
When I wait `PT05S` for debug
When I enter `onet1396@gmail.com` in field located `By.xpath(//input[@type='email'])`
When I click on element located `By.xpath(//span[contains(text(),'Next')])`
When I enter `SaiBaba@123#` in field located `By.xpath(//input[@type='password'])`
When I click on element located `By.xpath(//span[contains(text(),'Next')])`
