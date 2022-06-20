Description:As a user, I want to be able to record my sleep to track my health progress and lifestyle.
Meta:

    @Epic PT-170[PT-485]
    @group extended
    @layout desktop
    @wellness_logs
    @Priority 1

GivenStories: story/web/desktop/logIn/MH_Login.story

Scenario: [Desktop][Wellness Logs: Sleep] Log more than 24 hours per day

When I click on element located `${xpathFor_menuWellness}`
When I click on element located `${xpathFor_cmdWelnessLogs}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerWellnessLogs}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_fitnessActivityInDashboard}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sleepSection}` becomes VISIBLE
When I click on element located `${xpathFor_sleepSection}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sleepHeaderInDashboard}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordSleepInDashboard}` becomes VISIBLE
When I click on element located `${xpathFor_recordSleepInDashboard}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordSleepPopup}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_enterHours}` becomes VISIBLE
When I enter `20` in field located `${xpathFor_enterHours}`
When I click on element located `${xpathFor_recordSleepButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordSleepInDashboard}` becomes VISIBLE
When I click on element located `${xpathFor_recordSleepInDashboard}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordSleepPopup}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_enterHours}` becomes VISIBLE
When I enter `20` in field located `${xpathFor_enterHours}`
When I click on element located `${xpathFor_recordSleepButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_errorMsgCan'tHaveMoreThan24HrsOfSleep}` becomes VISIBLE
