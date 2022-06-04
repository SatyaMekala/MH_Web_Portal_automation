Description: As an adult user, I want to prevent my underaged dependents / children from accessing the portal to avoid irresponsible activity and be in charge of their healthcare

Scenario: [Desktop][Sign in] Error for underage users

Meta:

	@Epic PT-170[Jira-PT-257]
	@group critical_path	
	@layout desktop
	@login
	@Priority 1

Given I am on the main application page
When I wait until element located `${signInHeader}` contains text '${text_SignIn}'
When I enter `${userName}` in field located `${userNameXpath}`
When I enter `${userPwd}` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_underAgedSignInError}` becomes VISIBLE
Then the text '${underAgedSignInError}' exists
