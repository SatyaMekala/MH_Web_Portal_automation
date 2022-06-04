Description: As a user, I want to be able to switch between employer views to see different content and portal functionality associated with my employers
Meta:

	@Epic PT-170[Jira-PT-268]
	@group smoketest	
	@layout desktop
	@profile
	@Priority 1
	
	GivenStories: story/web/desktop/logIn/MH_Login.story
	
Scenario: [Desktop][Employer View] Change employer on Home Page


When I scroll context to TOP edge
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_profileButton}` becomes VISIBLE
When I click on element located `${xpathFor_profileButton}`
When I click on element located `By.buttonName(Viewing as: Demo Employer)`
When I click on element located `By.buttonName(View as: Aflac)`