Description: | As a patient/user, I want to be able to see available patient forms and be able to download them to have necessary forms and templates at hand. |

Meta:

	@Epic PT-170[Jira-PT-268]
	@group smoketest	
	@layout desktop
	@profile
	@Priority 1
	
	GivenStories: story/web/desktop/logIn/MH_Login.story
	
Scenario: [Desktop][Employer View] Change employer on Home Page

When I scroll context to TOP edge
When I wait until element located `By.xpath(//button[@id='profile-button'])` contains text '<text>'
When I click on element located `By.xpath(//button[@id='profile-button'])`


When I click on element located `By.xpath(//ul[@aria-labelledby='profile-button']//li[text()='Forms'])`
When I wait `PT10S` with `PT05S` polling until element located `By.xpath(//h1[text()='Forms'])` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `By.linkText(Home)` becomes VISIBLE
When I wait until element located `By.xpath(//li[@class='MuiBreadcrumbs-li']/p[text()='Forms'])` appears
When I wait `PT10S` with `PT05S` polling until element located `By.xpath(//h1[text()='Patient Forms'])` becomes VISIBLE
When I wait until element located `By.xpath(//a[text()='Release of Information'])` appears
When I click on element located `By.linkText(Home)`
When I wait `PT10S` with `PT05S` polling until element located `By.xpath(//button[text()='Home'])` becomes VISIBLE
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
