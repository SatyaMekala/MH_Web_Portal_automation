Description:As a patient/user, I want to be able to see webinars to gain additional knowledge about health and healthcare

Meta:

	@Epic PT-170[Jira-183]
	@group smoketest	
	@layout desktop
	@SmokeTest
	@Priority 1

GivenStories: story/web/desktop/logIn/MH_Login.story

Scenario: [Desktop][Articles] Our Provider Difference

When I click on element located `By.xpath(//button[text()='Appointments'])`
When I click on element located `By.xpath(//ul/li[text()='Our Providers'])`
When I wait until element located `By.xpath(//h1[text()='Providers'])` appears
When I wait until element located `By.xpath(//li[@class='MuiBreadcrumbs-li']/p[text()='Providers'])` appears


When I wait until an element with the tag 'img' and attribute 'alt'='Webinar Library' appears
When I wait until element located `By.xpath(//div[@class='Page_page__container-content__mUom7']/h1[text()='Webinar Library'])` appears
When I wait until element located `By.xpath(//h3[text()='2020 Webinars'])` appears
When I wait until an element with the tag 'a' and attribute 'href'='https://event.on24.com/wcc/r/2961836/09A85A43DDBEE4C6869004BDE384BF9F/1844487' appears
When I wait until element located `By.xpath(//a[@data-testid='link'][text()='Q3 Nutrition'])` appears
When I click on element located `By.xpath(//a[@data-testid='link'][text()='Q3 Nutrition'])`
When I switch to window with title that contains `Q3 2021: Pandemic Pantry: Session 4`
