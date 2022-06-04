Description: As a patient/user, I want to see information on care providers to be more aware of provided level of expertise and difference from other providers

Meta:

@Epic PT-170[Jira-PT-223]
	@group critical_path	
	@layout desktop
	@articles
	@Priority 1
	
	GivenStories: story/web/desktop/logIn/MH_Login.story
	
Scenario: [Desktop][Articles] Our Provider Difference

When I click on element located `By.buttonName(Appointments)`
When I click on element located `By.elementName(Our Providers)`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_providers}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `By.linkText(Home)` becomes VISIBLE
When I wait until element located `${xpathFor_breadcrumbProviders}` appears
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ourProviderDifference}` becomes VISIBLE
When I wait until an element with the tag 'img' and attribute 'alt'='${textOurProviderDiff}' appears
Then the text '${textInOurProviderDiffParagraph}' exists
When I click on element located `By.linkText(Home)`
When I wait until an element with the tag 'img' and attribute 'alt'='${textwelcomeToMarathon}' appears
When I change context to element located `${xpathFor_quickLinks}` in scope of current context
When I click on element located `${xpathFor_providersInQuickLinks}`
When I reset context
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_providers}` becomes VISIBLE
