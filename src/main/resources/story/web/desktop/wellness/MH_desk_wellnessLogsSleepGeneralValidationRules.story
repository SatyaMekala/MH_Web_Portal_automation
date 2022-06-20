Description:As a user, I want to be able to record my sleep to track my health progress and lifestyle

Meta:

    @Epic PT-170[PT-509]
    @group extended
    @layout desktop
    @wellness_logs
    @Priority 1

GivenStories: story/web/desktop/logIn/MH_Login.story

Scenario: [Desktop][Wellness Logs: Sleep] General Validation rules

When I click on element located `${xpathFor_menuWellness}`
When I click on element located `${xpathFor_cmdWelnessLogs}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerWellnessLogs}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sleepSection}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobRecordSleepInDashboard}` becomes VISIBLE
When I click on element located `${xpathFor_mobRecordSleepInDashboard}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordSleepPopup}` becomes VISIBLE
When I click on element located `${xpathFor_recordSleepButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_errorMsgTimeSleptIsRequired}` becomes VISIBLE

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordSleepPopup}` becomes VISIBLE
When I enter `24` in field located `${xpathFor_enterHours}`
When I wait until an element with the tag 'input' and attribute 'max'='23' appears

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_enterMinutes}` becomes VISIBLE
When I enter `70` in field located `${xpathFor_enterMinutes}`
When I wait until an element with the tag 'input' and attribute 'max'='59' appears
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordSleepPopup}` becomes VISIBLE

When I clear field located `${xpathFor_enterDateInRecordSteps}` using keyboard
When I enter `101025` in field located `${xpathFor_enterDateInRecordSteps}`
When I click on element located `${xpathFor_recordSleepButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_futureDateNotAllowedMsgInRecordSteps}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordSleepPopup}` becomes VISIBLE
