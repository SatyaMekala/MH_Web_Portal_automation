Description:As a patient/user, I want to be able to see webinars to gain additional knowledge about health and healthcare

Meta:

	@Epic PT-170[Jira-183]
	@group smoketest	
	@layout chrome_phone
	@SmokeTest
	@Priority 1


Scenario: Scenario: [Mobile][Articles] Webinar Library

Given I am on the main application page
When I wait until element located `By.xpath(//h1[text()='Sign In'])` contains text 'Sign In'
When I enter `<empName>` in field located `By.xpath(//input[@name='username'])`
When I enter `<empPwd>` in field located `By.xpath(//input[@name='password'])`
When I click on element located `By.xpath(//button[text()='Sign In'])`
When I scroll context to TOP edge
When I wait `PT10S` with `PT05S` polling until element located `By.xpath(//header/div/div/*[starts-with(@class,'MuiSvgIcon-root MuiSvgIcon')])` becomes VISIBLE
When I click on element located `By.xpath(//header/div/div/*[starts-with(@class,'MuiSvgIcon-root MuiSvgIcon')])`
When I click on element located `By.xpath(//div[text()='Resources'])`
When I click on element located `By.xpath(//li[text()='Webinars'])`
When I wait until element located `By.xpath(//nav[starts-with(@class,'MuiTypography-root')]//following-sibling::h1[text()='Webinar Library'])` appears
When I wait until element located `By.xpath(//li[@class='MuiBreadcrumbs-li']/p[text()='Webinar Library'])` appears
When I wait until an element with the tag 'img' and attribute 'alt'='Webinar Library' appears
When I wait until element located `By.xpath(//div[@class='Page_page__container-content__mUom7']/h1[text()='Webinar Library'])` appears
When I wait until element located `By.xpath(//h3[text()='2020 Webinars'])` appears
When I wait until an element with the tag 'a' and attribute 'href'='https://event.on24.com/wcc/r/2961836/09A85A43DDBEE4C6869004BDE384BF9F/1844487' appears
When I wait until element located `By.xpath(//a[@data-testid='link'][text()='Q3 Nutrition'])` appears
When I click on element located `By.xpath(//a[@data-testid='link'][text()='Q3 Nutrition'])`
When I switch to window with title that contains `Q3 2021: Pandemic Pantry: Session 4`

Examples:
|empName	|empPwd		|text				|
|remployee1	|Default1	|Employee1 React	|
