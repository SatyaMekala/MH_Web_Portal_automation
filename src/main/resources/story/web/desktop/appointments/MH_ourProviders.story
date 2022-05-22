Description: As a patient/user, I want to see information on care providers to be more aware of provided level of expertise and difference from other providers

Meta:

@Epic PT-170[Jira-PT-223]
	@group smoketest	
	@layout desktop
	@SmokeTest
	@Priority 1
	
	GivenStories: story/web/desktop/logIn/MH_Login.story
	
Scenario: [Desktop][Articles] Our Provider Difference

When I click on element located `By.buttonName(Appointments)`
When I click on element located `By.elementName(Our Providers)`
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
