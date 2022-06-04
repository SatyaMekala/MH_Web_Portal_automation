Description: As a user, I want to be able to access the WP using my own credentials to be identified and enter my personally customized space

Scenario: [Desktop][Login] Successful login

Meta:

	@Epic PT-170[Jira-184]
	@group smoketest	
	@layout desktop
	@login
	@Priority 1

Given I am on the main application page
When I wait until element located `${xpathFor_signInHeader}` contains text '${text_SignIn}'
When I enter `${userName}` in field located `${userNameXpath}`
When I enter `${userPwd}` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_homeButton}` becomes VISIBLE
When I wait until element located `${xpathFor_userProfileButton}` contains text '${text_userName}'
