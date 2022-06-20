Description:As a user, I want to be able to record my fitness activities to track my health progress and lifestyle.

Meta:

    @Epic PT-170[PT-505]
    @group critical_path
    @layout desktop
    @wellness_logs
    @Priority 1

GivenStories: story/web/desktop/logIn/MH_Login.story

Scenario: [Desktop][Wellness Logs: Fitness] View and Navigation

When I click on element located `${xpathFor_menuWellness}`
When I click on element located `${xpathFor_cmdWelnessLogs}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerWellnessLogs}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_fitnessActivity}` becomes VISIBLE
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/WellnessLog/get-exercise`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mostRecentEntryInFitness}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordActivityButtonInLeftPane}` becomes VISIBLE
When I click on element located `${xpathFor_recordActivityButtonInLeftPane}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordFitnessAvtivityPopup}` becomes VISIBLE
When I click on element located `${xpathFor_cancelButtonInRecordsSteps}`
Then an alert is not present
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_fitnessActivityInRightPane}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_fitnessActivityMinPerMonth}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_fitnessActivityMilesPerMonth}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_connectMyDeviceButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordActivityButtonInRightPane}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordActivityButtonInRightPane}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_graph}` becomes VISIBLE
Then number of elements found by `className(HistoryList_history-list__item__wUISK)` is > `1`
Then number of elements found by `className(HistoryList_history-list__item__wUISK)` is = `10`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_paginationFirstArrow}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_paginationLastArrow}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_paginationNEXTIcon}` becomes VISIBLE
When I click on element located `${xpathFor_paginationNEXTIcon}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_paginationSecondPageSelected}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_paginationBACKIcon}` becomes VISIBLE
When I click on element located `${xpathFor_paginationBACKIcon}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_paginationFirstPageSelected}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerWellnessLogs}` becomes VISIBLE
