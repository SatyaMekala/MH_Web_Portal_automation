Description:As a user, I want to be able to record my fitness activities to track my health progress and lifestyle.

Meta:

    @Epic PT-170[PT-498]
    @group smoke
    @layout desktop
    @wellness_logs
    @Priority 1

GivenStories: story/web/desktop/logIn/MH_Login.story

Scenario: [Desktop][Wellness Logs: Fitness] Record activity with no distance

When I click on element located `${xpathFor_menuWellness}`
When I click on element located `${xpathFor_cmdWelnessLogs}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerWellnessLogs}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_fitnessActivity}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordActivityButtonInRightPane}` becomes VISIBLE
When I click on element located `${xpathFor_recordActivityButtonInRightPane}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordFitnessAvtivityPopup}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_activityTypeDropDown}` becomes VISIBLE
When I click on element located `${xpathFor_activityTypeDropDown}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_danceValueFromActivityTypeDropdown}` becomes VISIBLE
When I click on element located `${xpathFor_danceValueFromActivityTypeDropdown}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_distanceSectionInRecordFitnessActivity}` becomes NOT_VISIBLE
When I click on element located `${xpathFor_recordFitnessActivityButtonInPopup}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_errorMsgDurationIsRequired}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_durationHours}` becomes VISIBLE
When I enter `2` in field located `${xpathFor_durationHours}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_durationMinutes}` becomes VISIBLE
When I enter `15` in field located `${xpathFor_durationMinutes}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_durationSeconds}` becomes VISIBLE
When I enter `30` in field located `${xpathFor_durationSeconds}`
When I click on element located `${xpathFor_recordFitnessActivityButtonInPopup}`
When I wait until an alert disappears
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/WellnessLog/save-exercise`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recentlyRecordedDance}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordedInfoSleep}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_editIconInRecentlyRecordedSteps}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_deleteIconInRecentlyRecordedSteps}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordedInfo}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobRecordedOnBySelf}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mostRecentEntryInFitnessSection}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mostRecentlyRecordedEntryInFitnessSection}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordedInfo}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobRecordedOnBySelf}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_editIconInRecentlyRecordedSteps}` becomes VISIBLE
When I click on element located `${xpathFor_editIconInRecentlyRecordedSteps}`
Then an alert is present
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_durationHours}` becomes VISIBLE
When I enter `5` in field located `${xpathFor_durationHours}`
When I click on element located `${xpathFor_cancelButtonInRecordsSteps}`
When I wait until an alert disappears
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mostRecentEntryInFitnessSection}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_editIconInRecentlyRecordedSteps}` becomes VISIBLE
When I click on element located `${xpathFor_editIconInRecentlyRecordedSteps}`
Then an alert is present
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_durationHours}` becomes VISIBLE
When I enter `3` in field located `${xpathFor_durationHours}`
When I click on element located `${xpathFor_recordFitnessActivityButtonInPopup}`
When I wait until an alert disappears
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_updatedRecentRecordInFitnessSection}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_deleteIconInRecentlyRecordedSteps}` becomes VISIBLE
When I click on element located `${xpathFor_deleteIconInRecentlyRecordedSteps}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_updatedRecentRecordInFitnessSection}` becomes NOT_VISIBLE
