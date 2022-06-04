Description: As a patient/user, I want to be able to see latest news to keep updated on recent changes and trends

Scenario: [Desktop][Latest News] Latest News carousel

Meta:

	@Epic PT-170[Jira-183]
	@group smoketest	
	@layout desktop
	@articles
	@Priority 1
		
Given I am on the main application page
When I enter `remployee1` in field located `${userNameXpath}`
When I enter `Default1` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_News}` becomes VISIBLE
Then field located `${xpathFor_News}` exists