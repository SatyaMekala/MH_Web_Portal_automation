Description:As a user, I want to be able to record my steps to track my health progress and lifestyle

Meta:

    @Epic PT-170[PT-438]
    @group critical_path
    @layout desktop
    @wellness_logs
    @Priority 1

GivenStories: story/web/desktop/logIn/MH_Login.story

Scenario: [Desktop][Wellness Logs: Steps] View and Navigation

When I click on element located `${xpathFor_menuWellness}`
When I click on element located `${xpathFor_cmdWelnessLogs}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerWellnessLogs}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_fitnessActivity}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_stepsSection}` becomes VISIBLE
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/WellnessLog/get-steps`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mostRecentEntry}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobRecordStepsInDashboard}` becomes VISIBLE
When I click on element located `${xpathFor_mobRecordStepsInDashboard}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordStepsPopup}` becomes VISIBLE
When I click on element located `${xpathFor_cancelButtonInRecordsSteps}`
Then an alert is not present
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerWellnessLogs}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerFitnessActivity}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_stepsSection}` becomes VISIBLE
When I click on element located `${xpathFor_stepsSection}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_stepsHeaderInRightPane}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `By.buttonName("Steps Per Month")` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_connectMyDeviceButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordStepsInDashboard}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_stepsGraph}` becomes VISIBLE
Then number of elements found by `className(HistoryList_history-list__item__wUISK)` is > `1`
Then number of elements found by `className(HistoryList_history-list__item__wUISK)` is = `10`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_paginationFirstArrow}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_paginationLastArrow}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_paginationFWIcon}` becomes VISIBLE
When I click on element located `${xpathFor_paginationFWIcon}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_paginationSecondPageSelected}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_paginationBackIcon}` becomes VISIBLE
When I click on element located `${xpathFor_paginationBackIcon}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_paginationFirstPageSelected}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerWellnessLogs}` becomes VISIBLE
