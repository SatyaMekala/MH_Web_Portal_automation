Scenario: Scenario: [Desktop][Logout] Standard logout flow
Meta:

	@group smoketest	
	@layout desktop
	@logout
	@Priority 1

Given I am on the main application page
When I enter `remployee9` in field located `${userNameXpath}`
When I enter `Default1` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_userProfileButton}` becomes VISIBLE
When I click on element located `${xpathFor_userProfileButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_signOutButton}` becomes VISIBLE
When I click on element located `${xpathFor_signOutButton}`
Then field located `${xpathFor_signInButton}` exists