Description: As an adult user, I want to prevent my underaged dependents / children from accessing the portal to avoid irresponsible activity and be in charge of their healthcare

Scenario: [Mobile][Sign in] Error for underage users

Meta:

	@Epic PT-170[Jira-PT-258]
	@group login	
	@layout chrome_phone
	@critical_path
	@Priority 1

Given I am on the main application page
When I wait until element located `By.xpath(//h1[text()='Sign In'])` contains text 'Sign In'
When I enter `<empName>` in field located `By.xpath(//input[@name='username'])`
When I enter `<empPwd>` in field located `By.xpath(//input[@name='password'])`
When I click on element located `By.xpath(//button[text()='Sign In'])`
When I wait `PT10S` with `PT05S` polling until element located `By.xpath(//div[text()='Sorry, you must be over 18 to sign in.'])` becomes VISIBLE
Then the text '<text>' exists

Examples:
|empName	|empPwd		|text				|
|rchild1	|Default1	|Sorry, you must be over 18 to sign in.	|