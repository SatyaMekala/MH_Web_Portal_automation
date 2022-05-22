Description: | As a user, tries with invalid password it should not allow the user to access Marathon Health web application in desktop view

Scenario: [Desktop][Login] Account Locked

Meta:

	@Epic PT-170[Jira-PT-248/193]
	@group smoketest	
	@layout desktop
	@SmokeTest
	@Priority 1
	
Given I am on the main application page
When I wait until element located `By.xpath(//h1[text()='Sign In'])` contains text 'Sign In'
When I enter `<validUser>` in field located `By.xpath(//input[@name='username'])`
When I enter `<invPwd>` in field located `By.xpath(//input[@name='password'])`
When I click on element located `By.xpath(//button[text()='Sign In'])`
When I wait `PT10S` with `PT05S` polling until element located `By.xpath(//div[text()='Your password or username is incorrect'])` becomes VISIBLE
Then the text 'Sign In' exists

Examples:
|validUser				|invPwd					|text			|
|remployee2				|Defa1234				|Your password or username is incorrect|

