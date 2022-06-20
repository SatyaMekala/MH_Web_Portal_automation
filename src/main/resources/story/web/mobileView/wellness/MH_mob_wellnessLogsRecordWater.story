Description:As a user, I want to be able to record my water to track my health progress and lifestyle.

Meta:

    @Epic PT-170[PT-482]
    @group smoke
    @layout chrome_phone
    @wellness_logs
    @Priority 1

GivenStories: story/web/mobileView/logIn/MH_mob_LoginPrecondition.story

Scenario: [Mobile][Wellness Logs: Water] Record Water

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobHamburgerMenuIcon}` becomes VISIBLE
When I click on element located `${xpathFor_mobHamburgerMenuIcon}`
When I click on element located `${xpathFor_mobMenuWellness}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobCommandWellnessLogs}` becomes VISIBLE
When I click on element located `${xpathFor_mobCommandWellnessLogs}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerWellnessLogs}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_waterSection}` becomes VISIBLE
When I click on element located `${xpathFor_waterSection}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobWaterHeaderInDashboard}` becomes VISIBLE
When I click on element located `${xpathFor_recordWaterButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordWaterPopup}` becomes VISIBLE
When I enter `05` in field located `${xpathFor_enterWaterInWaterRecordPopup}`
When I click on element located `${xpathFor_recordWaterButtonInRecordPopup}`
When I wait until an alert disappears
When I execute HTTP POST request for resource with URL `https://api.beta.marathon-health.com/WellnessLog/save-water`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recentlyRecordedWater}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_waterRecordedOnBySelf}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_editIconInRecentlyRecordedSteps}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_deleteIconInRecentlyRecordedSteps}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobBackToWellnessLogs}` becomes VISIBLE
When I click on element located `${xpathFor_mobBackToWellnessLogs}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mostRecentEntryInWater}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordedWaterInWaterSection}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_waterSection}` becomes VISIBLE
When I click on element located `${xpathFor_waterSection}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_editIconInRecentlyRecordedSteps}` becomes VISIBLE
When I click on element located `${xpathFor_editIconInRecentlyRecordedSteps}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordWaterPopup}` becomes VISIBLE
When I enter `09` in field located `${xpathFor_enterWaterInWaterRecordPopup}`
When I click on element located `${xpathFor_cancelButtonInRecordsSteps}`
When I wait until an alert disappears
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recentlyRecordedWater}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_editIconInRecentlyRecordedSteps}` becomes VISIBLE
When I click on element located `${xpathFor_editIconInRecentlyRecordedSteps}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordWaterPopup}` becomes VISIBLE
When I enter `10` in field located `${xpathFor_enterWaterInWaterRecordPopup}`
When I click on element located `${xpathFor_recordWaterButtonInRecordPopup}`
When I wait until an alert disappears
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_updatedRecordedWater}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_deleteIconInRecentlyRecordedSteps}` becomes VISIBLE
When I click on element located `${xpathFor_deleteIconInRecentlyRecordedSteps}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_updatedRecordedWater}` becomes NOT_VISIBLE
