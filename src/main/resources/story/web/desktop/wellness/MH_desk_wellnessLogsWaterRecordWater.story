Description:As a user, I want to be able to record my water to track my health progress and lifestyle.

Meta:

    @Epic PT-170[PT-493]
    @group smoke
    @layout desktop
    @wellness_logs
    @Priority 1

GivenStories: story/web/desktop/logIn/MH_Login.story

Scenario: [Desktop][Wellness Logs: Water] Record water

When I click on element located `${xpathFor_menuWellness}`
When I click on element located `${xpathFor_cmdWelnessLogs}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerWellnessLogs}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_fitnessActivity}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_waterSection}` becomes VISIBLE
When I click on element located `${xpathFor_waterSection}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_waterHeaderInRightPane}` becomes VISIBLE
When I click on element located `${xpathFor_recordWaterButtonInRightPane}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordWaterPopup}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_enterWaterInWaterRecordPopup}` becomes VISIBLE
When I enter `05` in field located `${xpathFor_enterWaterInWaterRecordPopup}`
When I click on element located `${xpathFor_recordWaterButtonInRecordPopup}`
When I wait until an alert disappears
When I execute HTTP POST request for resource with URL `https://api.beta.marathon-health.com/WellnessLog/save-water`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recentlyRecordedWater}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordedOn}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_editIconInRecentlyRecordedSteps}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_deleteIconInRecentlyRecordedSteps}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mostRecentlySectionInWater}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordedWaterInWaterSection}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordedOnBySelfInLeftPaneWaterSection}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_editIconInRecentlyRecordedSteps}` becomes VISIBLE
When I click on element located `${xpathFor_editIconInRecentlyRecordedSteps}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordWaterPopup}` becomes VISIBLE
When I enter `07` in field located `${xpathFor_enterWaterInWaterRecordPopup}`
When I click on element located `${xpathFor_cancelButtonInRecordsSteps}`
When I wait until an alert disappears
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recentlyRecordedWater}` becomes VISIBLE
When I click on element located `${xpathFor_editIconInRecentlyRecordedSteps}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordWaterPopup}` becomes VISIBLE
When I enter `10` in field located `${xpathFor_enterWaterInWaterRecordPopup}`
When I click on element located `${xpathFor_recordWaterButtonInRecordPopup}`
When I wait until an alert disappears
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_updatedRecordedWater}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_deleteIconInRecentlyRecordedSteps}` becomes VISIBLE
When I click on element located `${xpathFor_deleteIconInRecentlyRecordedSteps}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_updatedRecordedWater}` becomes NOT_VISIBLE
