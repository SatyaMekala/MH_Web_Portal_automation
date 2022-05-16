Scenarioe: Trello login and verfiy user
Meta:
    @layout desktop
Given I am on a page with the URL 'https://trello.com/'
When I click on element located `By.xpath(//a[contains(text(),'Log in')])`
When I enter `onet1396@gmail.com` in field located `By.xpath(//input[@id='user'])`
When I wait `PT10S` with `PT05S` polling until element located `By.xpath(//input[@id='login'])` becomes VISIBLE
When I click on element located `By.xpath(//input[@id='login'])`
When I wait `PT10S` with `PT05S` polling until element located `By.xpath(//input[@name='password'])` becomes VISIBLE
When I enter `SaiBaBa@123#` in field located `By.xpath(//input[@name='password'])`
When I click on element located `By.xpath(//span[contains(text(),'Log in')])`
When I take screenshot
When I click on element located `By.xpath(//span[@class='SETnvPbUKHW-cx _3XZPT267JcxN7w _1hy9FIxNNwKdWB'])`
When I click on element located `By.xpath(//a[@data-test-id='header-member-menu-settings'])`
When I scroll element located `By.xpath(//a[contains(text(),'Configure two-step verification')])` into view
When I click on element located `By.xpath(//a[contains(text(),'Configure two-step verification')])`
When I switch to window with title that contains `Atlassian`
When I wait `PT10S` with `PT05S` polling until element located `By.xpath(//input[@name='password'])` becomes VISIBLE
When I enter `SaiBaBa@Satya` in field located `By.xpath(//input[@name='password'])`
When I click on element located `By.xpath(//button[@type='submit']//span[contains(text(),'Set up')])`