Description: | As a user, tries with invalid username it should not allow the user to access Marathon Health web application

Scenario: [Desktop][Login] Invalid username and login with email

Meta:

	@Epic PT-170[Jira-PT-191]
	@group smoketest	
	@layout desktop
	@login
	@Priority 1
	
Given I am on the main application page
When I wait until element located `${xpathFor_signInHeader}` contains text 'Sign In'
When I enter `<invalidUserName>` in field located `${userNameXpath}`
When I enter `<invPwd>` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_incorrectUserPwdMsg}` becomes VISIBLE
When I wait until element located `${xpathFor_signInHeader}` contains text 'Sign In'
When I clear field located `${userNameXpath}` using keyboard
When I enter `<validEmailID>` in field located `${userNameXpath}`
When I clear field located `${pwdXpath}` using keyboard
When I enter `<validPwd>` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_homeButton}` becomes VISIBLE
When I wait until element located `${xpathFor_profileButton}` contains text '${text_userName}'
Then the text '${text_userName}' exists


Examples:
|invalidUserName		|validEmailID				|invPwd		|validPwd	|text			|
|remployee111			|testportal62+19@gmail.com  |test123	|Default1	|Employee1 React|

