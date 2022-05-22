Description: As a patient/user, I want to be able to see frequently asked questions to be more aware of the portal functionality and provided services
Meta:

@Epic PT-170[Jira-PT-234]
	@group smoketest	
	@layout chrome_phone
	@SmokeTest
	@Priority 1
	
	GivenStories: story/web/mobileView/logIn/MH_LoginPrecondition.story
	
Scenario: Scenario: [Mobile][Articles] FAQ


When I wait `PT10S` with `PT05S` polling until element located `By.xpath(//header/div/div/*[starts-with(@class,'MuiSvgIcon-root MuiSvgIcon')])` becomes VISIBLE
When I click on element located `By.xpath(//header/div/div/*[starts-with(@class,'MuiSvgIcon-root MuiSvgIcon')])`

When I click on element located `By.xpath(//div[text()='Help'])`
When I click on element located `By.xpath(//li[text()='FAQ'])`

When I wait `PT10S` with `PT05S` polling until element located `By.xpath(//h1[text()='Frequently Asked Questions'])` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `By.linkText(Home)` becomes VISIBLE
When I wait until element located `By.xpath(//li[@class='MuiBreadcrumbs-li']/p[text()='Frequently Asked Questions'])` appears
When I wait until an element with the tag 'img' and attribute 'alt'='Frequently Asked Questions' appears
When I wait `PT10S` with `PT05S` polling until element located `By.xpath(//h1[text()='Frequently Asked Questions'])` becomes VISIBLE
Then the text 'answered some our most frequently asked questions' exists
When I click on element located `By.xpath(//h1[text()='Marathon Health Overview'])`
Then the text 'Who are the providers for Marathon Health?' exists
When I click on element located `By.xpath(//h1[text()='Marathon Health Overview'])`
Then the text 'Who are the providers for Marathon Health?' does not exist
