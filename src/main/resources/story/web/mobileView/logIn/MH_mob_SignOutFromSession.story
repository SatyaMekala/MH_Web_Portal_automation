Description: As a user, I want to be able to keep my session active while I’m browsing the portal, so that I wouldn’t have to log in repeatedly



Meta:

	@Epic PT-170[Jira-PT-205]
	@group critical_path	
	@layout chrome_phone
	@session_refresh	
	@Priority 1
	

Scenario: [Mobile][Session timeout] Sign out from the session

Given I am on a page with the URL 'http://localhost:3000/login'
When I enter `<empName>` in field located `By.xpath(//input[@name='username'])`
When I enter `<empPwd>` in field located `By.xpath(//input[@name='password'])`
When I click on element located `By.xpath(//button[text()='Sign In'])`
When I scroll context to TOP edge
When I wait `PT10S` with `PT05S` polling until element located `By.xpath(//header/div/div/*[starts-with(@class,'MuiSvgIcon-root MuiSvgIcon')])` becomes VISIBLE
When I wait `PT100S` with `PT30S` polling until element located `By.xpath(//h3[text()='Still with us?'])` becomes VISIBLE
Then the text 'Due to inactivity your session is about to expire. Do you want to extend your session?' exists
When I wait until element located `By.xpath(//button[text()='No, sign out'])` appears
When I click on element located `By.xpath(//div[@class='Modal_modal__content__iGSuK']//button[text()='No, sign out'])`
When I wait until element located `By.xpath(//h1[text()='Sign In'])` contains text 'Sign In'

Examples:
|empName	|empPwd		|text				|
|remployee1	|Default1	|Employee1 React	|