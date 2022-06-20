Description:As a user, I want to be able to record my weight to track my health progress and lifestyle.

Meta:

    @Epic PT-170[PT-487]
    @group smoke
    @layout desktop
    @wellness_logs
    @Priority 1

GivenStories: story/web/desktop/logIn/MH_Login.story

Scenario: [Desktop][Wellness Logs: Weight] Record weight

When I click on element located `${xpathFor_menuWellness}`
When I click on element located `${xpathFor_cmdWelnessLogs}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerWellnessLogs}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_fitnessActivity}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_weightSection}` becomes VISIBLE
When I click on element located `${xpathFor_weightSection}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_weightHeaderInRightPane}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordWeightButtonInDashboard}` becomes VISIBLE
When I click on element located `${xpathFor_recordWeightButtonInDashboard}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordWeightPopup}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_enterWeight}` becomes VISIBLE
When I enter `75` in field located `${xpathFor_enterWeight}`
When I click on element located `${xpathFor_recordWeightButton}`
When I wait until an alert disappears
When I execute HTTP POST request for resource with URL `https://api.beta.marathon-health.com/WellnessLog/save-weight`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recentlyRecordedWeight}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordedInfoWeight}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_editIconInRecentlyRecordedSteps}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_deleteIconInRecentlyRecordedSteps}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mostRecentlySectionInWeight}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_weightInWeightSection}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_editIconInRecentlyRecordedSteps}` becomes VISIBLE
When I click on element located `${xpathFor_editIconInRecentlyRecordedSteps}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordWeightPopup}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_enterWeight}` becomes VISIBLE
When I enter `100` in field located `${xpathFor_enterWeight}`
When I click on element located `${xpathFor_cancelButtonInRecordsSteps}`
When I wait until an alert disappears
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recentlyRecordedWeight}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_editIconInRecentlyRecordedSteps}` becomes VISIBLE
When I click on element located `${xpathFor_editIconInRecentlyRecordedSteps}`
When I enter `150` in field located `${xpathFor_enterWeight}`
When I click on element located `${xpathFor_recordWeightButton}`
When I wait until an alert disappears
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_updatedWeightRecorded}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_deleteIconInRecentlyRecordedSteps}` becomes VISIBLE
When I click on element located `${xpathFor_deleteIconInRecentlyRecordedSteps}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_updatedWeightRecorded}` becomes NOT_VISIBLE
