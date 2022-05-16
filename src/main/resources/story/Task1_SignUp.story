scenario: Sign up
Given I am on the main application page
When I click on an element by the xpath '//a[contains(text(),'Sign up')]'
When I enter `abc@gmail.com` in field located `By.xpath(//input[@id='email'])`
When I click on element located `By.xpath(//input[@id='signup-submit'])`
