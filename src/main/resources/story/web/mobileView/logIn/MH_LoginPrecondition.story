Description: As a user, I want to be able to access the WP using my own credentials to be identified and enter my personally customized space

Scenario: [Mobile][Login] Successful login

Meta:

	@Epic PT-170[PT-188]
	@group smoketest	
	@layout chrome_phone
	@SmokeTest
	@Priority 1


Given I am on the main application page
When I wait until element located `By.xpath(//h1[text()='Sign In'])` contains text 'Sign In'
When I enter `<empName>` in field located `By.xpath(//input[@name='username'])`
When I enter `<empPwd>` in field located `By.xpath(//input[@name='password'])`
When I click on element located `By.xpath(//button[text()='Sign In'])`
When I wait `PT10S` with `PT05S` polling until element located `By.xpath(//div[@role='presentation'][@class='ProfileButton_profile-button__kd24b'])` becomes VISIBLE
When I scroll context to TOP edge
Examples:
|empName	|empPwd		|text				|
|remployee1	|Default1	|Employee1 React	|