Description: As a user, I want to be able to access the WP using my own credentials to be identified and enter my personally customized space

Scenario: [Desktop][Login] Successful login

Meta:

	@Epic PT-170[Jira-183]
	@group smoketest	
	@layout desktop
	@SmokeTest
	@Priority 1

Given I am on the main application page
When I wait until the page has the title 'React App'
When I enter `<empName>` in field located `By.xpath(//input[@name='username'])`
When I enter `<empPwd>` in field located `By.xpath(//input[@name='password'])`
When I click on element located `By.xpath(//button[text()='Sign In'])`
When I wait `PT10S` with `PT05S` polling until element located `By.xpath(//button[text()='Home'])` becomes VISIBLE
When I wait until element located `By.xpath(//button[@id='profile-button'])` contains text '<text>'
Then the text '<text>' exists

Examples:
|empName	|empPwd		|text				|
|eemployee1	|Default1	|Employee1 React	|

