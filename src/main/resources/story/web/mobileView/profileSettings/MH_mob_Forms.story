Description: | As a patient/user, I want to be able to see available patient forms and be able to download them to have necessary forms and templates at hand. |

Meta:

	@Epic PT-170[Jira-PT-275]
	@group articles	
	@layout chrome_phone
	@critical_path
	@Priority 1
	
	GivenStories: story/web/mobileView/logIn/MH_Login.story
	
Scenario: [Mobile][Forms] Forms view and navigation

When I scroll context to TOP edge
When I wait `PT10S` with `PT05S` polling until element located `By.xpath(//div[@role='presentation'][@class='ProfileButton_profile-button__kd24b'])` becomes VISIBLE
When I click on element located `By.xpath(//div[@role='presentation'][@class='ProfileButton_profile-button__kd24b'])`
When I click on element located `By.xpath(//li[text()='Forms'])`
When I wait `PT10S` with `PT05S` polling until element located `By.xpath(//h1[text()='Forms'])` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `By.linkText(Home)` becomes VISIBLE
When I wait until element located `By.xpath(//li[@class='MuiBreadcrumbs-li']/p[text()='Forms'])` appears
When I wait `PT10S` with `PT05S` polling until element located `By.xpath(//h1[text()='Patient Forms'])` becomes VISIBLE
When I wait until element located `By.xpath(//a[text()='Release of Information'])` appears
When I click on element located `By.linkText(Home)`
When I wait `PT10S` with `PT05S` polling until element located `By.xpath(//h3[text()='My Incentives Status'])` becomes VISIBLE
When I change context to element located `By.xpath(//h3[text()='Quick Links'])` in scope of current context
When I click on element located `By.xpath(//div[text()='Forms'])`
When I reset context
When I wait `PT10S` with `PT05S` polling until element located `By.xpath(//h1[text()='Forms'])` becomes VISIBLE
When I wait until element located `By.xpath(//a[text()='Release of Information'])` appears
When I click on element located `By.xpath(//a[text()='Release of Information'])`
When I switch to window with title that contains ``
When I close the current window

Examples:
|text|
|Employee1 React|
