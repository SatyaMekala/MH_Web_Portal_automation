Description:As a user, I want to be able to record my steps to track my health progress and lifestyle.

Meta:

    @Epic PT-170[PT-436]
    @group smoke
    @layout chrome_phone
    @wellness_logs
    @Priority 1

GivenStories: story/web/mobileView/logIn/MH_mob_LoginPrecondition.story

Scenario: [Mobile][Wellness Logs: Steps] Record steps

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobHamburgerMenuIcon}` becomes VISIBLE
When I click on element located `${xpathFor_mobHamburgerMenuIcon}`
When I click on element located `${xpathFor_mobMenuWellness}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobCommandWellnessLogs}` becomes VISIBLE
When I click on element located `${xpathFor_mobCommandWellnessLogs}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerWellnessLogs}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_stepsSection}` becomes VISIBLE
When I click on element located `${xpathFor_stepsSection}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobStepsHeaderInDashboard}` becomes VISIBLE
When I click on element located `${xpathFor_mobRecordStepsInDashboard}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_enterSteps}` becomes VISIBLE
When I enter `5000` in field located `${xpathFor_enterSteps}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordStepsButton}` becomes VISIBLE
When I click on element located `${xpathFor_recordStepsButton}`
When I wait until an alert disappears
When I send HTTP POST to the relative URL 'WellnessLog/save-steps'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_stepsRecorded}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobRecordedOn}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_editIconInRecentlyRecordedSteps}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_deleteIconInRecentlyRecordedSteps}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobBackToWellnessLogs}` becomes VISIBLE
When I click on element located `${xpathFor_mobBackToWellnessLogs}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerWellnessLogs}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobRecordedStepsInStepsSection}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_mobRecordedOnBySelf}` becomes VISIBLE
When I click on element located `${xpathFor_stepsSection}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_editIconInRecentlyRecordedSteps}` becomes VISIBLE
When I click on element located `${xpathFor_editIconInRecentlyRecordedSteps}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_enterSteps}` becomes VISIBLE
When I enter `7777` in field located `${xpathFor_enterSteps}`
When I click on element located `${xpathFor_cancelButtonInRecordsSteps}`
When I wait until an alert disappears
Then the text '7777' does not exist
When I click on element located `${xpathFor_editIconInRecentlyRecordedSteps}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_enterSteps}` becomes VISIBLE
When I enter `9999` in field located `${xpathFor_enterSteps}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordStepsButton}` becomes VISIBLE
When I click on element located `${xpathFor_recordStepsButton}`
When I wait until an alert disappears
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_updatedStepsRecorded}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_deleteIconInRecentlyRecordedSteps}` becomes VISIBLE
When I click on element located `${xpathFor_deleteIconInRecentlyRecordedSteps}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_updatedStepsRecorded}` becomes NOT_VISIBLE
