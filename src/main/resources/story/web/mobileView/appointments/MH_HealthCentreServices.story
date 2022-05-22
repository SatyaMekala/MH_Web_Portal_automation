Description: As a patient/user, I want to be able to see information on the services provided by health centers so as to be more aware of my healthcare options and opportunities

Meta:

@Epic PT-170[Jira-PT-238]
	@group smoketest	
	@layout chrome_phone
	@SmokeTest
	@Priority 1
	
	GivenStories: story/web/mobileView/logIn/MH_LoginPrecondition.story
	
Scenario: [Mobile][Articles] Health Center Services

When I wait `PT10S` with `PT05S` polling until element located `By.xpath(//header/div/div/*[starts-with(@class,'MuiSvgIcon-root MuiSvgIcon')])` becomes VISIBLE
When I click on element located `By.xpath(//header/div/div/*[starts-with(@class,'MuiSvgIcon-root MuiSvgIcon')])`

When I click on element located `By.xpath(//div[text()='Appointments'])`
When I click on element located `By.xpath(//li[text()='Health Center Services'])`
When I wait `PT10S` with `PT05S` polling until element located `By.xpath(//h1[text()='Health Center Services'])` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `By.linkText(Home)` becomes VISIBLE
When I wait until element located `By.xpath(//li[@class='MuiBreadcrumbs-li']/p[text()='Health Center Services'])` appears
When I wait until an element with the tag 'img' and attribute 'alt'='Health Center Services' appears
When I wait `PT10S` with `PT05S` polling until element located `By.xpath(//h1[text()='Health Center Services'])` becomes VISIBLE
Then the text 'Pediatric Care (ages 3+)' exists
When I click on element located `By.linkText(Home)`
When I wait until an element with the tag 'img' and attribute 'alt'='Welcome to Marathon Health' appears
When I change context to element located `By.xpath(//h3[text()='Quick Links'])` in scope of current context
When I click on element located `By.xpath(//div[text()='Health Center Services'])`
When I reset context
When I wait `PT10S` with `PT05S` polling until element located `By.xpath(//h1[text()='Health Center Services'])` becomes VISIBLE
