Scenario: cerate account in imdb
When I set browser command line arguments to `--disable-notifications`
Given I am on a page with the URL 'https://www.imdb.com/'
When I click on element located `By.xpath(//div[contains(text(),'Sign In')])`
When I click on element located `By.xpath(//a[contains(text(),'Create a New Account')])`
When I enter `TestUser` in field located `By.xpath(//input[@id='ap_customer_name'])`
When I enter `Test1007@gmail.com` in field located `By.xpath(//input[@id='ap_email'])`
When I enter `Test@123#` in field located `By.xpath(//input[@id='ap_password'])`
When I enter `Test@123#` in field located `By.xpath(//input[@id='ap_password_check'])`
When I click on element located `By.xpath(//input[@id='continue'])`
When I take screenshot
