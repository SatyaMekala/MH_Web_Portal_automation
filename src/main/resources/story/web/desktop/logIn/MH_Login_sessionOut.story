Description: As a user, I want to be able to keep my session active while I?m browsing the portal, so that I wouldn?t have to log in repeatedly



Meta:

	@Epic PT-170[Jira-183]
	@group smoketest	
	@layout desktop
	@SmokeTest
	@Priority 1
	

Scenario: [Desktop] [Session timeout] Session timeout popup - extend session

Given I am on a page with the URL 'http://localhost:3000/login'
When I enter `<empName>` in field located `By.xpath(//input[@name='username'])`
When I enter `<empPwd>` in field located `By.xpath(//input[@name='password'])`
When I click on element located `By.xpath(//button[text()='Sign In'])`
When I wait `PT10S` with `PT05S` polling until element located `By.xpath(//button[text()='Home'])` becomes VISIBLE
When I wait `PT65S` with `PT30S` polling until element located `By.xpath(//h3[text()='Still with us?'])` becomes VISIBLE
When I click on element located `By.xpath(//button[text()='Home'])`
Then the text 'Due to inactivity your session is about to expire. Do you want to extend your session?' exists
When I wait until element located `By.xpath(//button[text()='Extend session'])` appears
When I click on element located `By.xpath(//div[@class='Modal_modal__content__iGSuK']//button[text()='Extend session'])`
When I wait `PT10S` with `PT05S` polling until element located `By.xpath(//button[text()='Home'])` becomes VISIBLE

Examples:
|empName	|empPwd		|text				|
|remployee2	|Default1	|Employee1 React	|