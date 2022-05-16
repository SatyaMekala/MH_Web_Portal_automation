Description: As a patient/user, I want to be able to see latest news to keep updated on recent changes and trends

Scenario: [Desktop][Latest News] Latest News Details

Meta:

	@Epic 170 - PT-187
	@group smoketest	
	@layout desktop
	@SmokeTest
	@Priority 1
		
Given I am on the main application page
When I enter `remployee1` in field located `By.xpath(//input[@name='username'])`
When I enter `Default1` in field located `By.xpath(//input[@name='password'])`
When I click on element located `By.xpath(//button[text()='Sign In'])`
When I wait `PT10S` with `PT05S` polling until element located `By.xpath(//p[text()='News'])` becomes VISIBLE
When I click on element located `By.xpath(//div[@class='NewsCarousel_carousel__header__HccZO']//button[2])`
When I wait `PT10S` with `PT05S` polling until element located `By.xpath(//div[@class='NewsCarousel_carousel__content__f0JYx']/h3[contains(text(),'Virtual Care with Marathon Health')])` becomes VISIBLE
When I click on element located `By.xpath(//div[@class='NewsCarousel_carousel__header__HccZO']//button[1])`
When I wait `PT10S` with `PT05S` polling until element located `By.xpath(//img[@alt='Welcome to Marathon Health'])` becomes VISIBLE
When I scroll element located `By.xpath(//div[@aria-hidden='false']//button[text()='Read More'])` into view
When I click on element located `By.xpath(//div[@aria-hidden='false']//button[text()='Read More'])`
When I wait until element located `By.xpath(//li/p[text()='Latest News'])` appears
Then the page with the URL containing '/latest_news' is loaded
Then field located `By.xpath(//img[@alt='Welcome to Marathon Health'])` exists
Then field located `By.xpath(//h1[text()='Welcome to Marathon Health'])` exists
Then field located `By.xpath(//h3[text()='Unforgettable experiences'])` exists