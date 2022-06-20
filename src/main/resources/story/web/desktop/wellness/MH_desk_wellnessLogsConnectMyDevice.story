Description:As a user, I want to be able to connect my devices to the portal app to see aggregated data on my health

Meta:

    @Epic PT-170[PT-411]
    @group critical_path
    @layout desktop
    @wellness_logs
    @Priority 1

GivenStories: story/web/desktop/logIn/MH_Login.story

Scenario: [Desktop][Connect Device] View and navigation

When I click on element located `${xpathFor_menuWellness}`
When I click on element located `${xpathFor_cmdWelnessLogs}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerWellnessLogs}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_connectMyDeviceButton}` becomes VISIBLE
When I click on element located `${xpathFor_connectMyDeviceButton}`
When I click on element located `${xpathFor_connectButtonInConnectURDevice}`
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/wellness/wellness_logs`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ConnectYourDeviceHeader}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ConnectADeviceWithYourMarathonHealthAccount}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_connectButtonInPopup}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_textToConnectAppleHealthorGoogleFit}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_appStoreButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_googlePlayButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_connectingYourDeviceWillSendData}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_appStoreButton}` becomes VISIBLE
When I click on element located `${xpathFor_appStoreButton}`
When I switch to window with title that contains `Marathon Health on the App Store`
When I close the current window
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_googlePlayButton}` becomes VISIBLE
When I click on element located `${xpathFor_googlePlayButton}`
When I switch to window with title that contains `Marathon Health - Apps on Google Play`
When I close the current window
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_connectingYourDevicePopupCloseIcon}` becomes VISIBLE
When I click on element located `${xpathFor_connectingYourDevicePopupCloseIcon}`
