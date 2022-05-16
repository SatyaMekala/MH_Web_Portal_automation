Scenarioe: Trello sign up
Meta:
    @layout desktop
    
Given I am on a page with the URL 'https://trello.com/'
When I click on element located `By.xpath(//a[contains(text(),'Sign up')])`

When I wait `PT10S` with `PT05S` polling until element located `By.xpath(//input[@type='email'])` becomes VISIBLE
When I enter `onet1396@gmail.com` in field located `By.xpath(//input[@type='email'])`
When I wait `PT10S` with `PT05S` polling until element located `By.xpath(//input[@id='signup-submit'])` becomes VISIBLE
When I click on element located `By.xpath(//input[@id='signup-submit'])`

When I wait `PT10S` with `PT05S` polling until element located `By.xpath(//input[@type='email'])` becomes VISIBLE
When I enter `onet1396@gmail.com` in field located `By.xpath(//input[@type='email'])`
When I wait `PT10S` with `PT05S` polling until element located `By.xpath(//button[@id='signup-submit'])` becomes VISIBLE
When I click on element located `By.xpath(//button[@id='signup-submit'])`
When I wait `PT10S` with `PT05S` polling until element located `By.xpath(//input[@type='password'])` becomes VISIBLE
When I enter `SaiBaba@123#` in field located `By.xpath(//input[@type='password'])`
When I click on element located `By.xpath(//span[contains(text(),'Next')])`
