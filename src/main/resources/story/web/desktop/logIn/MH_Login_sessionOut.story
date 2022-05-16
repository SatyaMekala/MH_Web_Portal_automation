!-- Description: As a user, I want to be able to keep my session active while I’m browsing the portal, so that I wouldn’t have to log in repeatedly



Meta:

	@Epic PT-170[Jira-183]
	@group smoketest	
	@layout desktop
	@SmokeTest
	@Priority 1
	
GivenStories: story/web/desktop/logIn/MH_Login.story

Scenario: [Desktop] [Session timeout] Session timeout popup - extend session
When I wait until element located `By.xpath(//button[text()='Messages'])` appears
!-- //button[text()='No, sign out']