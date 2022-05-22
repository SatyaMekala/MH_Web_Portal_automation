Description: As a patient/user, I want to see information on care providers to be more aware of provided level of expertise and difference from other providers

Meta:

@Epic PT-170[Jira-PT-223]
	@group smoketest	
	@layout chrome_phone
	@SmokeTest
	@Priority 1
	
	
Scenario: [Mobile][Articles] Our Provider Difference

Given I am on the main application page
When I wait until element located `By.xpath(//h1[text()='Sign In'])` contains text 'Sign In'
When I enter `<empName>` in field located `By.xpath(//input[@name='username'])`
When I enter `<empPwd>` in field located `By.xpath(//input[@name='password'])`
When I click on element located `By.xpath(//button[text()='Sign In'])`
When I scroll context to TOP edge
When I wait `PT10S` with `PT05S` polling until element located `By.xpath(//header/div/div/*[starts-with(@class,'MuiSvgIcon-root MuiSvgIcon')])` becomes VISIBLE
When I click on element located `By.xpath(//header/div/div/*[starts-with(@class,'MuiSvgIcon-root MuiSvgIcon')])`

When I click on element located `By.xpath(//div[text()='Appointments'])`
When I click on element located `By.xpath(//li[text()='Our Providers'])`
When I wait `PT10S` with `PT05S` polling until element located `By.xpath(//h1[text()='Providers'])` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `By.linkText(Home)` becomes VISIBLE
When I wait until element located `By.xpath(//li[@class='MuiBreadcrumbs-li']/p[text()='Providers'])` appears
When I wait `PT10S` with `PT05S` polling until element located `By.xpath(//h1[text()='Our Provider Difference'])` becomes VISIBLE
When I wait until an element with the tag 'img' and attribute 'alt'='Our Provider Difference ' appears
Then the text 'At Marathon Health, we offer 20- 40-minute appointment options' exists
When I click on element located `By.linkText(Home)`
When I wait until an element with the tag 'img' and attribute 'alt'='Welcome to Marathon Health' appears
When I change context to element located `By.xpath(//h3[text()='Quick Links'])` in scope of current context
When I click on element located `By.xpath(//div[text()='Providers'])`
When I reset context
When I wait `PT10S` with `PT05S` polling until element located `By.xpath(//h1[text()='Providers'])` becomes VISIBLE

Examples:
|empName	|empPwd		|text				|
|remployee1	|Default1	|Employee1 React	|
