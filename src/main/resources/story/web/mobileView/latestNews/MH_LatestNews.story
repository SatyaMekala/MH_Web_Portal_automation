Description: As a patient/user, I want to be able to see latest news to keep updated on recent changes and trends

Scenario: [Mobile] [Latest News] Latest News carousel

Meta:

	@Epic PT-170[PT-183]
	@group smoketest	
	@layout desktop chrome_phone mobile
	@SmokeTest
	@Priority 1
		
Given I am on the main application page
When I enter `remployee1` in field located `By.xpath(//input[@name='username'])`
When I enter `Default1` in field located `By.xpath(//input[@name='password'])`
When I click on element located `By.xpath(//button[text()='Sign In'])`
When I wait `PT10S` with `PT05S` polling until element located `By.xpath(//p[text()='News'])` becomes VISIBLE
Then field located `By.xpath(//p[text()='News'])` exists
