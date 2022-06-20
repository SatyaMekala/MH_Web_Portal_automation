Description:As a user, I want to be able to record my sleep to track my health progress and lifestyle.
Meta:

    @Epic PT-170[PT-483]
    @group critical_path
    @layout desktop
    @wellness_logs
    @Priority 1

GivenStories: story/web/desktop/logIn/MH_Login.story

Scenario: [Desktop][Wellness Logs: Sleep] View and Navigation

When I click on element located `${xpathFor_menuWellness}`
When I click on element located `${xpathFor_cmdWelnessLogs}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerWellnessLogs}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_fitnessActivityInDashboard}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sleepSection}` becomes VISIBLE
When I execute HTTP GET request for resource with URL `https://api.beta.marathon-health.com/WellnessLog/get-sleep`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mostRecentlySectionInSleep}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordSleepButtonInSleepSection}` becomes VISIBLE
When I click on element located `${xpathFor_recordSleepButtonInSleepSection}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordSleepPopup}` becomes VISIBLE
When I click on element located `${xpathFor_cancelButtonInRecordsSteps}`
When I wait until an alert disappears
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerWellnessLogs}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_fitnessActivityInDashboard}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sleepSection}` becomes VISIBLE
When I click on element located `${xpathFor_sleepSection}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sleepHeaderInDashboard}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_hoursPerMonth}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_connectMyDeviceButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordSleepInDashboard}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_graph}` becomes VISIBLE
Then number of elements found by `className(HistoryList_history-list__item__wUISK)` is > `1`
Then number of elements found by `className(HistoryList_history-list__item__wUISK)` is = `10`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_paginationFWIcon}` becomes VISIBLE
When I click on element located `${xpathFor_paginationFWIcon}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_paginationSecondPageSelected}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_paginationBackIcon}` becomes VISIBLE
When I click on element located `${xpathFor_paginationBackIcon}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerWellnessLogs}` becomes VISIBLE
