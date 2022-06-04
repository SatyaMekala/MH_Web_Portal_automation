Description: | As a patient/user, I want to be able to see available patient forms and be able to download them to have necessary forms and templates at hand. |

Meta:

	@Epic PT-170[Jira-PT-274]
	@group critical_path
	@layout desktop
	@articles
	@Priority 1
	
	GivenStories: story/web/desktop/logIn/MH_Login.story
	
Scenario: [Desktop][Forms] Forms view and navigation

When I scroll context to TOP edge
When I wait until element located `${xpathFor_profileButton}` contains text '<text>'
When I click on element located `${xpathFor_profileButton}`
When I click on element located `${xpathFor_formsInProfileMenu}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headingForms}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `By.linkText(Home)` becomes VISIBLE
When I wait until element located `${xpathFor_breadcrumbForms}` appears
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headingPatientForms}` becomes VISIBLE
When I wait until element located `${xpathFor_releaseOfInformation}` appears
When I click on element located `By.linkText(Home)`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_homeButton}` becomes VISIBLE
When I change context to element located `${xpathFor_quickLinks}` in scope of current context
When I click on element located `${xpathFor_formsInQuickLink}`
When I reset context
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headingForms}` becomes VISIBLE
When I wait until element located `${xpathFor_releaseOfInformation}` appears
When I click on element located `${xpathFor_releaseOfInformation}`
When I switch to window with title that contains ``
When I close the current window

Examples:
|text|
|Employee1 React|
