Description: | As a user, I want to have constant elements of the UI, so that I could navigate the app more easily


Meta:

	@Epic PT-170[Jira-183]
	@group smoketest	
	@layout desktop
	@home_page
	@Priority 1
	
	GivenStories: story/web/desktop/logIn/MH_Login.story
	
Scenario: Scenario: [Desktop][Main page] View and navigation

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_menuAppointments}` becomes VISIBLE
When I click on element located `${xpathFor_menuAppointments}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_cmdScheduleAppointment}` becomes VISIBLE
When I click on element located `${xpathFor_cmdScheduleAppointment}`
When I wait until element located `${xpathFor_userProfileButton}` appears
When I click on element located `${xpathFor_userProfileButton}`

When I wait until element located `${xpathFor_userProfileButton}` appears
When I click on element located `${xpathFor_userProfileButton}`

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_homeButton}` becomes VISIBLE
When I click on element located `${xpathFor_homeButton}`
When I wait until element located `${xpathFor_marathonHealthLogo}` appears
When I wait until element located `${xpathFor_messages}` appears
When I wait until element located `${xpathFor_phoneNumber}` appears
When I wait until element located `${xpathFor_textHowCanIHelpyouToday}` appears
When I wait until element located `${xpathFor_textMyIncentivesStatus}` appears
When I wait until element located `${xpathFor_News}` appears
When I wait until element located `${xpathFor_sectionWhatsNew}` appears
When I wait until element located `${xpathFor_COVID-19ScreeningButton}` appears
When I wait until element located `${xpathFor_quickLinks}` appears
When I wait until element located `${xpathFor_sectionWeAreHereToHelp}` appears
When I wait until element located `${xpathFor_footerAccessbilityStatement}` appears
When I wait until element located `${xpathFor_footerTermsOfUse}` appears
When I wait until element located `${xpathFor_footerPrivacyPolicy}` appears
When I wait until element located `${xpathFor_footerPrivacyPractices}` appears
When I wait until element located `${xpathFor_menuAppointments}` appears
When I wait until element located `${xpathFor_menuMedicationRefills}` appears
When I wait until element located `${xpathFor_menuMyHealth}` appears
When I wait until element located `${xpathFor_menuWellness}` appears
When I wait until element located `${xpathFor_menuResources}` appears
When I wait until element located `${xpathFor_menuHelp}` appears
When I click on element located `${xpathFor_menuAppointments}`
When I click on element located `${xpathFor_menuMedicationRefills}`
When I click on element located `${xpathFor_homeButton}`
When I wait until element located `${xpathFor_News}` appears
