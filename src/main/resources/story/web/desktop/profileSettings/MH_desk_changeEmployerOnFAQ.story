Description: As a user, I want to be able to switch between employer views to see different content and portal functionality associated with my employers
Meta:

	@Epic PT-170[Jira-PT-271]
	@group critical_path	
	@layout desktop
	@critical_path
	@profile
	@Priority 1
	
	GivenStories: story/web/desktop/logIn/MH_Login.story
	
Scenario: [Desktop][Employer View] Change employer on FAQ screen

When I scroll context to TOP edge
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_menuHelp}` becomes VISIBLE
When I click on element located `${xpathFor_menuHelp}`
When I click on element located `${xpathFor_MenuFAQ}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_shruti'squestions}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_profileButton}` becomes VISIBLE
When I click on element located `${xpathFor_profileButton}`
When I click on element located `By.buttonName(Viewing as: Demo Employer)`
When I click on element located `By.buttonName(View as: Aflac)`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_homeButton}` becomes VISIBLE
When I click on element located `${xpathFor_profileButton}`
When I wait until element located `By.buttonName(Viewing as: Aflac)` appears
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_menuHelp}` becomes VISIBLE
When I click on element located `${xpathFor_menuHelp}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_shruti'squestions}` becomes NOT_VISIBLE
