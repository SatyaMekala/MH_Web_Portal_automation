scenario: Verify user
Given I am on the main application page
When I click on an element by the xpath '//a[contains(text(),'Log in')]'
When I enter `satya.sn1638@gmail.com` in field located `By.xpath(//input[@id='user'])`
When I click on element located `By.xpath(//input[@id='login'])`
When I sw alert with message which comparisonRule `Continue as satya`
When I click on element located `By.xpath(//button[@id='continue-as'])`
