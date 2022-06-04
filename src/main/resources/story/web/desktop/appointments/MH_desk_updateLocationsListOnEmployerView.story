Description: As a user, I want to be able to see the list of health center locations available to me so that I know where I can receive care and how those facilities can be contacted
Meta:

	@Epic PT-170[PT-394]
	@group smoketest	
	@layout desktop
	@locations
	@Priority 1
	

Scenario: [Desktop][Location] Update locations list based on employer view

Given I am on the main application page
When I wait until element located `${xpathFor_signInHeader}` contains text 'Sign In'
When I enter `<empName>` in field located `${userNameXpath}`
When I enter `<empPwd>` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_menuAppointments}` becomes VISIBLE
When I click on element located `${xpathFor_menuAppointments}`
When I click on element located `${xpathFor_appointments_HCL}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HCL_InHomePage}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HCL_clinic1}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HCL_clinic2}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HCL_clinic3}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_userProfileButton}` becomes VISIBLE
When I click on element located `${xpathFor_userProfileButton}`
When I click on element located `By.buttonName(View as: Aflac)`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_homeButton}` becomes VISIBLE
When I click on element located `By.buttonName(Appointments)`
When I click on element located `${xpathFor_appointments_HCL}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HCL_InHomePage}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HCL_mobAflacClinic1}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HCL_mobAflacClinic2}` becomes VISIBLE

Examples:
|empName   |empPwd  |
|remployee1|Default1|
