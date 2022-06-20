Description:As a patient/user, I want to be able to see webinars to gain additional knowledge about health and healthcare

Meta:

	@Epic PT-170[Jira-183]
	@group critical_path	
	@layout desktop
	@articles
	@Priority 1

GivenStories: story/web/desktop/logIn/MH_Login.story

Scenario: [Desktop][Articles] Webinar Library

When I click on element located `${xpathFor_menuAppointments}`
When I click on element located `${xpathFor_menuAppointmntsOurProviders}`
When I wait until element located `${xpathFor_headerInHomePage_ourProviders}` appears
When I wait until element located `${xpathFor_breadcrumbProviders}` appears


When I wait until an element with the tag 'img' and attribute 'alt'='Webinar Library' appears
When I wait until element located `${xpathFor_headingWebinarLibrary}` appears
When I wait until element located `${xpathFor_heading2020Webinar}` appears
When I wait until an element with the tag 'a' and attribute 'href'='${href_2020Webinar}' appears
When I wait until element located `${xpathFor_linkQ3Nutrition}` appears
When I click on element located `${xpathFor_linkQ3Nutrition}`
When I switch to window with title that contains `Q3 2021: Pandemic Pantry: Session 4`
