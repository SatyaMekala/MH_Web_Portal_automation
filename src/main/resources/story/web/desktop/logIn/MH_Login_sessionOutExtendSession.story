Description: As a user, I want to be able to keep my session active while I’m browsing the portal, so that I wouldn’t have to log in repeatedly

Meta:

	@Epic PT-170[Jira-183]
	@group critical_path	
	@layout desktop
	@articles
	@Priority 1	

Scenario: [Desktop] [Session timeout] Session timeout popup - extend session

Given I am on the main application page
When I enter `<empName>` in field located `${userNameXpath}`
When I enter `<empPwd>` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_homeButton}` becomes VISIBLE
When I wait `PT605S` with `PT300S` polling until element located `${xpathFor_StillWithUsAlertMsg}` becomes VISIBLE
When I click on element located `${xpathFor_homeButton}`
Then the text '${textInStillWithUsPopup}' exists
When I wait until element located `${xpathFor_ExtendSessionButton}` appears
When I click on element located `${xpathFor_ExtendSessionButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_homeButton}` becomes VISIBLE

Examples:
|empName	|empPwd		|text				|
|remployee9	|Default1	|Employee1 React	|