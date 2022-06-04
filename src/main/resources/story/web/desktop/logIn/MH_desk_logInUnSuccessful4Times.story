Description: | As a user, I want to have my account locked upon several consecutive (5) to prevent unauthorized access to my data |

Scenario: [Desktop][Login] Account Locked

Meta:

	@Epic PT-170[Jira-PT-248/193]
	@group smoketest	
	@layout desktop
	@SmokeTest
	@Priority 1
	
Given I am on the main application page
When I wait until element located `${xpathFor_signInHeader}` contains text 'Sign In'
When I enter `${userName}` in field located `${userNameXpath}`
When I enter `${inValidPwd}` in field located `${pwdXpath}`
When I execute steps with delay 'PT05S' at most 4 times while variable 'var' is = '4':
|step |
|When I click on element located `${xpathFor_signInButton}` |
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_accLockedOneMoreInvalidAttempt}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_accLockedOneMoreInvalidAttmptRecoverPwd}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recoverPwdLink}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recoverPwdcloseButton}` becomes VISIBLE
When I click on element located `${xpathFor_recoverPwdcloseButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_accLockedOneMoreInvalidAttempt}` becomes NOT_VISIBLE
When I click on element located `${xpathFor_signInButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_unLockMsg}` becomes VISIBLE
When I wait until element located `${xpathFor_signInHeader}` contains text '${text_SignIn}'

When I open URL `https://my.qa.marathon-health.com/api/v1/utils/user/testportal2021+308@gmail.com/unlock` in new window
When I close the current window

When I clear field located `${userNameXpath}` using keyboard
When I enter `${userName}` in field located `${userNameXpath}`
When I clear field located `${pwdXpath}` using keyboard
When I enter `${userPwd}` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I scroll context to TOP edge
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_homeButton}` becomes VISIBLE
When I wait until element located `${xpathFor_userProfileButton}` contains text '${text_userName}'






