Description: As a patient/user, I want to be able to see frequently asked questions to be more aware of the portal functionality and provided services
Meta:

@Epic PT-170[Jira-PT-234]
	@group smoketest	
	@layout desktop
	@SmokeTest
	@Priority 1
	
	GivenStories: story/web/desktop/logIn/MH_Login.story
	
Scenario: Scenario: [Desktop][Articles] FAQ

When I click on element located `By.buttonName(Help)`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_menuFAQ}` becomes VISIBLE
When I click on element located `${xpathFor_menuFAQ}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headingFAQ}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `By.linkText(Home)` becomes VISIBLE
When I wait until element located `${xpathFor_breadcrumbFAQ}` appears
When I wait until an element with the tag 'img' and attribute 'alt'='${textFAQ}' appears
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headingFAQ}` becomes VISIBLE
Then the text '${textAnsweredSomeFAQs}' exists
When I click on element located `${xpathFor_textMarathonHealth}`
Then the text '${textwhoAreTheProvForMH}' exists
When I click on element located `${xpathFor_textMarathonHealth}`
Then the text '${textwhoAreTheProvForMH}' does not exist
