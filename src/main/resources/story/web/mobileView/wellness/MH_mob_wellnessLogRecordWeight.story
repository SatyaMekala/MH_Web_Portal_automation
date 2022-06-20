Description:As a user, I want to be able to record my weight to track my health progress and lifestyle.

Meta:

    @Epic PT-170[PT-488]
    @group smoke
    @layout chrome_phone
    @wellness_logs
    @Priority 1

GivenStories: story/web/mobileView/logIn/MH_mob_LoginPrecondition.story

Scenario: [Mobile][Wellness Logs: Weight] Record weight

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobHamburgerMenuIcon}` becomes VISIBLE
When I click on element located `${xpathFor_mobHamburgerMenuIcon}`
When I click on element located `${xpathFor_mobMenuWellness}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobCommandWellnessLogs}` becomes VISIBLE
When I click on element located `${xpathFor_mobCommandWellnessLogs}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_weightSectionInLeftPane}` becomes VISIBLE
When I click on element located `${xpathFor_weightSectionInLeftPane}`


When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_weightInHeaderSection}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobRecordWeightButtonInWeightPane}` becomes VISIBLE
When I click on element located `${xpathFor_mobRecordWeightButtonInWeightPane}`
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
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobBackToWellnessLogs}` becomes VISIBLE
When I click on element located `${xpathFor_mobBackToWellnessLogs}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mostRecentlySectionInSleep}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recentlyRecordedWeightInMobView}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobRecordedOnBySelf}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_weightSectionInLeftPane}` becomes VISIBLE
When I click on element located `${xpathFor_weightSectionInLeftPane}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_editIconInRecentlyRecordedSteps}` becomes VISIBLE
When I click on element located `${xpathFor_editIconInRecentlyRecordedSteps}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_enterWeight}` becomes VISIBLE
When I enter `110` in field located `${xpathFor_enterWeight}`
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
