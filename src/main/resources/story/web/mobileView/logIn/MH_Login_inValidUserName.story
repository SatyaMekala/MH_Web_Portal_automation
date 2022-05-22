Description: | As a user, tries with invalid username it should not allow the user to access Marathon Health web application in mobile view

Scenario: [Mobile][Login] Invalid username and login with email

Meta:

	@Epic PT-170[Jira-PT-248]
	@group smoketest	
	@layout chrome_phone
	@SmokeTest
	@Priority 1
	
Given I am on the main application page
When I wait until element located `By.xpath(//h1[text()='Sign In'])` contains text 'Sign In'
When I enter `<invalidUserName>` in field located `By.xpath(//input[@name='username'])`
When I enter `<invPwd>` in field located `By.xpath(//input[@name='password'])`
When I click on element located `By.xpath(//button[text()='Sign In'])`
When I wait `PT10S` with `PT05S` polling until element located `By.xpath(//div[text()='Username or password is incorrect'])` becomes VISIBLE
When I wait until element located `By.xpath(//h1[text()='Sign In'])` contains text 'Sign In'
When I clear field located `By.xpath(//input[@name='username'])` using keyboard
When I enter `<validEmailID>` in field located `By.xpath(//input[@name='username'])`
When I clear field located `By.xpath(//input[@name='password'])` using keyboard
When I enter `<validPwd>` in field located `By.xpath(//input[@name='password'])`
When I click on element located `By.xpath(//button[text()='Sign In'])`
When I wait `PT10S` with `PT05S` polling until element located `By.xpath(//div[@class='ProfileButton_profile-button__kd24b'])` becomes VISIBLE
When I click on element located `By.xpath(//div[@class='ProfileButton_profile-button__kd24b'])`
When I wait until element located `By.xpath(//button[text()='Sign In'])` contains text '<text>'


Examples:
|invalidUserName		|validEmailID				|invPwd		|validPwd	|text	|
|remployee111			|testportal62+19@gmail.com  |test123	|Default1	|Sign In|

