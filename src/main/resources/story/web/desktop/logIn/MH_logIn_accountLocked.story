Description: | As a user, tries with invalid userName/password it should lock the the user to access after 5 times user has to unlock it to log in again to Marathon Health web application in desktop view

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
When I execute steps with delay 'PT02S' at most 5 times while variable 'var' is = '5':
|step |
|When I click on element located `By.xpath(//button[text()='Sign In'])` |
When I wait `PT10S` with `PT05S` polling until element located `By.xpath(//div[text()='Please wait 30 minutes or call our Member Relations Team to unlock your account.'])` becomes VISIBLE
Then the text 'Sign In' exists

When I open URL `https://my.qa.marathon-health.com/api/v1/utils/user/testportal62+19@gmail.com/unlock` in new window
When I close the current window

When I wait until element located `By.xpath(//h1[text()='Sign In'])` contains text 'Sign In'
When I enter `<validUser>` in field located `By.xpath(//input[@name='username'])`
When I enter `<validPwd>` in field located `By.xpath(//input[@name='password'])`
When I click on element located `By.xpath(//button[text()='Sign In'])`
When I wait `PT10S` with `PT05S` polling until element located `By.xpath(//button[text()='Home'])` becomes VISIBLE
When I wait until element located `By.xpath(//button[@id='profile-button'])` contains text '<text1>'
Then the text '<text1>' exists



Examples:
|validUser				|invPwd		|validPwd|text1			 |	text			|
|remployee1				|Defa1234	|Default1|Employee1 React|	Please wait 30 minutes or call our Member Relations Team to unlock your account.|

